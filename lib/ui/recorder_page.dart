import 'package:flutter/material.dart';

class RecorderPage extends StatelessWidget {
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
                Text('Recorder page!'),
              ],
            )
          ],
        ),
      );
}
