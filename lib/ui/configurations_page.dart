import 'package:flutter/material.dart';

class ConfigurationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //App Bar
        appBar: AppBar(
          title: Text('Configurations'),
        ),

        body: PageView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Configurations page.'),
              ],
            )
          ],
        ),
      );
}
