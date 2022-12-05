import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(projets());

class projets extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/main': (context) => MyApp(),
      },
      // Application name
      title: 'Projets',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Projets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  Text('-Projet fin d année',
                      style: TextStyle(
                        color: Color(0xff7e0404),
                        fontSize: 23,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('Marketplace Locale',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-PROJET WEB | MINI-PROJET',
                      style: TextStyle(
                        color: Color(0xff7e0404),
                        fontSize: 23,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('un site web en utilisant Html ,CSS .',
                      style: TextStyle(
                        color: Color(0xff0a090a),
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            Container(
              child: RaisedButton(
                child: Icon(
                  Icons.keyboard_return,
                  size: 40.0,
                  color: Colors.purple,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
