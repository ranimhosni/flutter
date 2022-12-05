import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(activite());

class activite extends StatelessWidget {
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
                    Icons.group,
                    size: 20.0,
                    color: Colors.purple,
                  ),
                  Text('Membre en Rotaract Club SICCA Le Kef.',
                      style: TextStyle(
                          color: Color(0xff370b72),
                          fontSize: 18,
                          fontStyle: FontStyle.italic)),
                ],
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.purple,
              backgroundImage: NetworkImage(
                  "https://scontent.ftun15-1.fna.fbcdn.net/v/t39.30808-1/273832336_109948124947687_678841789389682103_n.png?stp=dst-png_p200x200&_nc_cat=109&ccb=1-7&_nc_sid=c6021c&_nc_ohc=31H_asT9PtIAX8rchua&_nc_ht=scontent.ftun15-1.fna&oh=00_AfCw8AWMC2f0n-Tpifb2mFz9yqWO_QAEIktu_khtbqeUAg&oe=6393A711"),
              radius: 70.0,
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
