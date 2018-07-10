import 'dart:async';
import 'dart:io';
import 'package:audio_recorder/audio_recorder.dart';

//TODO: create an interface and add dependency injection
class RecordingService {

  Future<bool> isRecording() async => await AudioRecorder.isRecording;

  Future<bool> hasPermissions() async => await AudioRecorder.hasPermissions;

  void start() async => await AudioRecorder.start();

  void stop() async {
    Recording rec = await AudioRecorder.stop();
    File recFile = File(rec.path);
  }
}