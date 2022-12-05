import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(contact());

class contact extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/main': (context) => MyApp(),
      },
      // Application name
      title: 'Activités Associatives',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Activités Associatives'),
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
                  Icon(
                    Icons.phone,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Text('41183244',
                      style: TextStyle(
                        color: Color(0xff050505),
                        fontSize: 23,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.home,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Text('béja',
                      style: TextStyle(
                        color: Color(0xff050505),
                        fontSize: 23,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.mail,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Text('ranim@gmail.com',
                      style: TextStyle(
                        color: Color(0xff050505),
                        fontSize: 23,
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
