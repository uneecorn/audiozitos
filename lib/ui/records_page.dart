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
          title: Text('Audiozitos', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.keyboard_voice,
            color: Theme.of(context).canvasColor,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pushNamed(context, '/recorder');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomBar(),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: buildList(),
      );
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
              icon: Icon(Icons.settings, color: Theme.of(context).canvasColor),
              onPressed: () => Navigator.pushNamed(context, '/configurations'),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildList() {
  int itemCount = 30;
  // TODO: create service to get the recordings
  return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int position) {
        if (position.isOdd)
          return position == itemCount - 1
              ? ListTile(
                  title: Center(
                    child: Text(
                      'This is the end ♫♪',
                      style: TextStyle(
                        color: Theme.of(context).indicatorColor,
                      ),
                    ),
                  ),
                )
              : Divider();
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
