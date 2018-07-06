import 'package:flutter/material.dart';

class RecorderPage extends StatefulWidget {
  @override
  _RecorderPageState createState() => _RecorderPageState();
}

class _RecorderPageState extends State<RecorderPage> {
  bool _isRecording = false;

  IconData get _startStopButtonIcon =>
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
  Widget build(BuildContext context) => Scaffold(
        //App Bar
        appBar: AppBar(
          title: Text('Recorder'),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),

        body: PageView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Material(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(75.0),
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(75.0),
                        splashColor: Theme.of(context).accentColor,
                        highlightColor: Theme.of(context).accentColor,
                        onTap: _onStartStopButtonPressed,
                        child: Center(
                          child: Icon(
                            _startStopButtonIcon,
                            size: 60.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
