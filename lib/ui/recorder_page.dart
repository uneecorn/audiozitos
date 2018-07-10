import 'package:audiozitos/shared/containers/circle_icon_button.dart';
import 'package:audiozitos/shared/services/recording_service.dart';
import 'package:flutter/material.dart';

class RecorderPage extends StatefulWidget {
  @override
  _RecorderPageState createState() => _RecorderPageState();
}

class _RecorderPageState extends State<RecorderPage> {

  final RecordingService _recordingService = RecordingService();

  bool _isRecording = false;

  IconData get _startStopButtonIconData =>
      _isRecording ? Icons.stop : Icons.play_arrow;

  void _startRecording() {
    setState(() {
      _isRecording = true;
      _recordingService.start();
    });
  }

  void _stopRecording() {
    setState(() {
      _isRecording = false;
      _recordingService.stop();
    });
  }

  void _onStartStopButtonPressed() {
    if (_isRecording)
      _stopRecording();
    else
      _startRecording();
  }

  void _onDiscardButtonPressed() {
    if (_isRecording) _stopRecording();
    //TODO discard current recording
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        //App Bar
        appBar: AppBar(
          title: Text('Recorder'),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white,
                    Colors.grey,
                  ],
                  stops: [
                    0.1,
                    0.9
                  ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: CircleIconButton(
                    onTap: _onStartStopButtonPressed,
                    highlightColor: Theme.of(context).highlightColor,
                    splashColor: Theme.of(context).splashColor,
                    iconData: this._startStopButtonIconData,
                    iconSize: 60.0,
                    diameter: 150.0,
                    primaryColor: Theme.of(context).primaryColor,
                    iconColor: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
                      child: CircleIconButton(
                        onTap: this._onDiscardButtonPressed,
                        highlightColor: Colors.redAccent,
                        splashColor: Colors.redAccent,
                        iconData: Icons.delete,
                        iconSize: 30.0,
                        diameter: 70.0,
                        primaryColor: Colors.red,
                        iconColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            )),
      );
}
