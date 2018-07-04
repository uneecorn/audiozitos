import 'package:flutter/material.dart';

class RecordsPage extends StatefulWidget {
  @override
  _RecordsPageState createState() => _RecordsPageState();
}

class _RecordsPageState extends State<RecordsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    //TODO: fight for the appBar ♥
    appBar: AppBar(
      title: Text('Audiozitos',
      style: TextStyle(color: Colors.white)),
      centerTitle: true,
      backgroundColor: Colors.purple,
    ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.keyboard_voice,
            color: Colors.white,
          ),
          backgroundColor: Colors.deepPurple,
          // TODO: open recording page with a sapeka animation
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed('/recorder');
          },
        ),
        body: buildList(),
    backgroundColor: Colors.white30,

      );
}

var container = Container(
  height: 180.0,
  child: Center(
    child: FloatingActionButton(
      child: Icon(
        Icons.keyboard_voice,
        color: Colors.white,
      ),
      backgroundColor: Colors.purpleAccent,
      // TODO: open recording page with a sapeka animation
      onPressed: () => debugPrint('default recorder'),
    ),
  ),
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.deepPurpleAccent,
        Colors.deepPurple,
        Colors.purple,
        Colors.purpleAccent,
      ],
      stops: [0.1, 0.4, 0.6, 0.9],
    ),
  ),
);

Widget buildList() {
  // TODO: create service to get the recordings
  return ListView.builder(
      itemCount: 30,
      itemBuilder: (BuildContext context, int position) {
        if (position == 0) return container;
        else if (position.isEven && position > 0) return Divider();
        final index = position ~/ 2;

        //create rows for the list view
        return Container(
            child: ListTile(
          title: Text(
            'hey man',
            style: TextStyle(
              fontSize: 15.5,
              color: Colors.purpleAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            'do you wanna see my recorder?',
            style: TextStyle(
              fontSize: 14.5,
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            onPressed: () => debugPrint('play'),
          ),
        ));
      });
}
