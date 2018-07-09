import 'package:flutter/material.dart';

import './ui/records_page.dart';
import './ui/recorder_page.dart';
import './ui/configurations_page.dart';

class AudiozitosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Audiozitos MVP 🏆',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.purple,
          primaryColorDark: Colors.deepPurple,
          accentColor: Colors.purpleAccent,
          canvasColor: Colors.white,
          scaffoldBackgroundColor: Colors.white30,
          indicatorColor: Colors.grey,
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => RecordsPage(),
          '/recorder': (context) => RecorderPage(),
          '/configurations': (context) => ConfigurationsPage(),
        },
      );
}
