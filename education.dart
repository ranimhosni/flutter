import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(education());

class education extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/main': (context) => MyApp(),
      },
      // Application name
      title: 'Education',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Education'),
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
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.school_rounded,
                    size: 20.0,
                    color: Colors.purple,
                  ),
                  Text('INSTITUT SUPÉRIEURE  DU KEF',
                      style: TextStyle(
                          color: Color(0xff370b72),
                          fontSize: 20,
                          fontStyle: FontStyle.italic)),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.school_rounded,
                    size: 20.0,
                    color: Colors.purple,
                  ),
                  Text('LYCÉE BÉCHIR SFAR AMDOUN',
                      style: TextStyle(
                          color: Color(0xff370b72),
                          fontSize: 20,
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
