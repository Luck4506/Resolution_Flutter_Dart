import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:record/record.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const GravadorApp());
}

class GravadorApp extends StatelessWidget {
  const GravadorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gravador de Audio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const GravadorPage(),
    );
  }
}

class GravadorPage extends StatefulWidget {
  const GravadorPage({super.key});

  @override
  State<GravadorPage> createState() => _GravadorPageState();
}

class _GravadorPageState extends State<GravadorPage> {
  AudioRecorder? _recorder;
  AudioPlayer? _player;
  Timer? _timer;
  String? _recordingPath;
  String? _savedPath;
  Duration _recordingDuration = Duration.zero;
  bool _isRecording = false;
  bool _isPlaying = false;
  bool _isUploadingBackup = false;

  @override
  void dispose() {
    _timer?.cancel();
    _recorder?.dispose();
    _player?.dispose();
    super.dispose();
  }

  Future<void> _startRecording() async {
    final permission = await Permission.microphone.request();

    if (!permission.isGranted) {
      _showMessage('Permissao do microfone negada.');
      return;
    }

    await _player?.stop();

    final directory = await getTemporaryDirectory();
    final filePath =
        '${directory.path}/gravacao_${DateTime.now().millisecondsSinceEpoch}.m4a';

    _recorder ??= AudioRecorder();

    await _recorder!.start(
      const RecordConfig(
        encoder: AudioEncoder.aacLc,
        bitRate: 128000,
        sampleRate: 44100,
      ),
      path: filePath,
    );

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _recordingDuration += const Duration(seconds: 1);
      });
    });

    setState(() {
      _isRecording = true;
      _isPlaying = false;
      _recordingPath = null;
      _savedPath = null;
      _recordingDuration = Duration.zero;
    });
  }

  Future<void> _stopRecording() async {
    final path = await _recorder?.stop();

    _timer?.cancel();

    setState(() {
      _isRecording = false;
      _recordingPath = path;
    });

    if (path != null) {
      _showMessage('Gravacao pronta para reproduzir.');
    }
  }

  Future<void> _playRecording() async {
    final path = _recordingPath;
    if (path == null) {
      return;
    }

    _player ??= AudioPlayer();
    await _player!.stop();
    await _player!.play(DeviceFileSource(path));

    setState(() => _isPlaying = true);

    _player!.onPlayerComplete.first.then((_) {
      if (mounted) {
        setState(() => _isPlaying = false);
      }
    });
  }

  Future<void> _stopPlayback() async {
    await _player?.stop();
    setState(() => _isPlaying = false);
  }

  Future<void> _saveRecording() async {
    final path = _recordingPath;
    if (path == null) return;

    if (_savedPath != null) {
      _showMessage('Este audio ja foi salvo.');
      return;
    }

    final directory = await getApplicationDocumentsDirectory();
    final savedFile = File(
      '${directory.path}/audio_salvo_${DateTime.now().millisecondsSinceEpoch}.m4a',
    );

    await File(path).copy(savedFile.path);

    setState(() => _savedPath = savedFile.path);
    _showMessage('Audio salvo no armazenamento do app.');

    final shouldBackup = await _askBackupConfirmation();
    if (shouldBackup) {
      await _backupSavedRecording(savedFile);
    }
  }

  Future<bool> _askBackupConfirmation() async {
    if (!mounted) return false;

    final answer = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Fazer backup na nuvem?'),
          content: const Text(
            'Deseja enviar esta gravacao para o Firebase Storage?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Nao'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Sim'),
            ),
          ],
        );
      },
    );

    return answer ?? false;
  }

  Future<void> _backupSavedRecording(File savedFile) async {
    setState(() => _isUploadingBackup = true);

    try {
      final fileName = savedFile.uri.pathSegments.last;
      final storageRef = FirebaseStorage.instance.ref('audios/$fileName');

      await storageRef.putFile(
        savedFile,
        SettableMetadata(contentType: 'audio/mp4'),
      );

      _showMessage('Backup concluido com sucesso!');
    } on FirebaseException catch (e) {
      _showMessage('Erro no backup: ${e.message ?? e.code}');
    } catch (e) {
      _showMessage('Erro no backup: $e');
    } finally {
      if (mounted) {
        setState(() => _isUploadingBackup = false);
      }
    }
  }

  Future<void> _newRecording() async {
    if (_isRecording) {
      await _recorder?.cancel();
    }

    await _player?.stop();
    _timer?.cancel();

    setState(() {
      _isRecording = false;
      _isPlaying = false;
      _isUploadingBackup = false;
      _recordingPath = null;
      _savedPath = null;
      _recordingDuration = Duration.zero;
    });
  }

  void _showMessage(String message) {
    if (!mounted) return;

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final hasRecording = _recordingPath != null;
    final hasSavedRecording = _savedPath != null;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gravador de Audio'),
        centerTitle: true,
        backgroundColor: colors.primaryContainer,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              Icon(
                _isRecording ? Icons.mic : Icons.graphic_eq,
                size: 96,
                color: _isRecording ? colors.error : colors.primary,
              ),
              const SizedBox(height: 16),
              Text(
                _isRecording
                    ? 'Gravando...'
                    : hasRecording
                    ? 'Gravacao finalizada'
                    : 'Toque para iniciar',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                _formatDuration(_recordingDuration),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colors.primary,
                ),
              ),
              const SizedBox(height: 32),
              FilledButton.icon(
                onPressed: _isRecording ? _stopRecording : _startRecording,
                icon: Icon(_isRecording ? Icons.stop : Icons.mic),
                label: Text(_isRecording ? 'Parar gravacao' : 'Gravar audio'),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: hasRecording
                    ? (_isPlaying ? _stopPlayback : _playRecording)
                    : null,
                icon: Icon(_isPlaying ? Icons.stop : Icons.play_arrow),
                label: Text(_isPlaying ? 'Parar reproducao' : 'Reproduzir'),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed:
                    hasRecording && !hasSavedRecording && !_isUploadingBackup
                    ? _saveRecording
                    : null,
                icon: Icon(
                  _isUploadingBackup ? Icons.cloud_upload : Icons.save,
                ),
                label: Text(
                  _isUploadingBackup ? 'Enviando backup...' : 'Salvar',
                ),
              ),
              const SizedBox(height: 12),
              TextButton.icon(
                onPressed: (_isRecording || hasRecording)
                    ? _newRecording
                    : null,
                icon: const Icon(Icons.refresh),
                label: const Text('Nova gravacao'),
              ),
              const Spacer(),
              if (_savedPath != null)
                Text(
                  'Salvo em:\n$_savedPath',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
