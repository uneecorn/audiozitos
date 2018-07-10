import 'dart:async';
import 'dart:io';
import 'package:audio_recorder/audio_recorder.dart';
import 'package:audiozitos/shared/services/file_service.dart';

//TODO: create an interface and add dependency injection
class RecordingService {
  final FileService _fileService = FileService();

  Future<bool> isRecording() async => await AudioRecorder.isRecording;

  Future<bool> hasPermissions() async => await AudioRecorder.hasPermissions;

  void start() async {
    String path = '${await _fileService
        .getApplicationDocsDirectoryPath()}_${DateTime.now()}';
    await AudioRecorder.start(
        path: path, audioOutputFormat: AudioOutputFormat.AAC);
  }

  void stop() async {
    Recording rec = await AudioRecorder.stop();
    File recFile = File(rec.path);
  }
}
