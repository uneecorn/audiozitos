import 'package:audiozitos/ui/records_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(Audiozitos());

class Audiozitos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audiozitos',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: RecordsPage(),
    );
  }
}
