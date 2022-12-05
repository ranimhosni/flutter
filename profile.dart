import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(profile());

class profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/main': (context) => MyApp(),
      },
      // Application name
      title: 'Profile',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Profile'),
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
                  Text('-3éme génie logiciel en isi Kef',
                      style: TextStyle(
                        color: Color(0xff370b72),
                        fontSize: 23,
                        fontStyle: FontStyle.italic,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Esprit curieux et contact facile.',
                      style: TextStyle(
                          color: Color(0xff370b72),
                          fontSize: 23,
                          fontStyle: FontStyle.italic)),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Bonne communication',
                      style: TextStyle(
                          color: Color(0xff370b72),
                          fontSize: 23,
                          fontStyle: FontStyle.italic)),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Capacité d organisation.  ',
                      style: TextStyle(
                          color: Color(0xff370b72),
                          fontSize: 23,
                          fontStyle: FontStyle.italic)),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Travail en groupe  ',
                      style: TextStyle(
                          color: Color(0xff370b72),
                          fontSize: 23,
                          fontStyle: FontStyle.italic)),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Rapidité d apprentissage.',
                      style: TextStyle(
                          color: Color(0xff370b72),
                          fontSize: 23,
                          fontStyle: FontStyle.italic)),
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
