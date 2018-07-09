import 'package:audiozitos/shared/containers/circle_icon_button.dart';
import 'package:flutter/material.dart';

class RecorderPage extends StatefulWidget {
  @override
  _RecorderPageState createState() => _RecorderPageState();
}

class _RecorderPageState extends State<RecorderPage> {
  bool _isRecording = false;

  IconData get _startStopButtonIconData =>
      _isRecording ? Icons.stop : Icons.play_arrow;

  void _startRecording() {
    setState(() {
      _isRecording = true;
    });
  }

  void _stopRecording() {
    setState(() {
      _isRecording = false;
    });
  }

  void _onStartStopButtonPressed() {
    if (_isRecording)
      _stopRecording();
    else
      _startRecording();
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        //App Bar
        appBar: AppBar(
          title: Text('Recorder'),
          elevation:
          Theme
              .of(context)
              .platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.deepPurple,
                  ],
                  stops: [
                    0.1,
                    0.6
                  ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                    child: CircleIconButton(
                      onTap: _onStartStopButtonPressed,
                      highlightColor: Theme.of(context).accentColor,
                      splashColor: Theme.of(context).accentColor,
                      iconData: _startStopButtonIconData,
                      iconSize: 60.0,
                      diameter: 150.0,
                      primaryColor: Theme.of(context).primaryColor,
                    ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    //TODO: create discard button
                  ],
                ),
              ],
            )),
      );
}


