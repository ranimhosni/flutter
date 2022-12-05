import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(competences());

class competences extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/main': (context) => MyApp(),
      },
      // Application name
      title: 'Compétences et centres dintérêtes',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Compétences et centres dintérêtes'),
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
                  Text('Languages',
                      style: TextStyle(
                        color: Color(0xffa1299b),
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Html ,CSS , Javascript',
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
                  Text('-java,nodejs,express',
                      style: TextStyle(
                        color: Color(0xff370b72),
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Langues',
                      style: TextStyle(
                        color: Color(0xffa1299b),
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-LanguesArabe : Langue maternelle',
                      style: TextStyle(
                        color: Color(0xff370b72),
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Français : niveau avancé',
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
                  Text('-Anglais : intermédiaire',
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
                  Text('-Centres d intérêts',
                      style: TextStyle(
                        color: Color(0xffa1299b),
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Livres',
                      style: TextStyle(
                        color: Color(0xff370b72),
                        fontSize: 20,
                      )),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('-Sport',
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
                  Text('-Musiques',
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
