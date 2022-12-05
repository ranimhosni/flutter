import 'package:flutter/material.dart';
import 'profile.dart';
import 'education.dart';
import 'projets.dart';
import 'certificats.dart';
import 'activite.dart';
import 'competences.dart';
import 'contact.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/profile': (context) => profile(),
        '/Education': (context) => education(),
        '/Projets': (context) => projets(),
        '/certificats': (context) => certificats(),
        '/activité': (context) => activite(),
        '/competences': (context) => competences(),
        '/contact': (context) => contact(),
      },
      // Application name
      title: 'Mon cv',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.purple,
      ),

      home: MyHomePage(title: 'Mon cv'),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.purple,
              backgroundImage: NetworkImage(
                "https://scontent.ftun14-1.fna.fbcdn.net/v/t39.30808-6/309263593_3334551006834290_1652597412717242267_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=1OJf8sMh6r8AX_J6Dhc&_nc_ht=scontent.ftun14-1.fna&oh=00_AfDTu7qpcpwnGPk0n6UFaGKoyZ-OOFFwJ29TmtepcUXDZg&oe=63914C58",
              ),
              radius: 50.0,
            ),
            Text('Hosni Ranim',
                style: TextStyle(
                    color: Color(0xff070808),
                    fontSize: 35,
                    fontStyle: FontStyle.italic)),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Container(
                    child: RaisedButton(
                      child: Text('Profile',
                          style: TextStyle(
                            color: Color(0xff070808),
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.school,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Text('Education',
                          style: TextStyle(
                              color: Color(0xff070808),
                              fontSize: 20,
                              fontStyle: FontStyle.italic)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Education');
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.history_edu,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Container(
                    child: RaisedButton(
                      child: Text('Projets',
                          style: TextStyle(
                              color: Color(0xff070808),
                              fontSize: 20,
                              fontStyle: FontStyle.italic)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Projets');
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Text('Certificats',
                          style: TextStyle(
                            color: Color(0xff070808),
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/certificats');
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.group,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Container(
                    child: RaisedButton(
                      child: Text('Activités Associatives',
                          style: TextStyle(
                            color: Color(0xff070808),
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/activité');
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.emoji_objects,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Text('Compétences ',
                          style: TextStyle(
                            color: Color(0xff070808),
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/competences');
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.mail_outline,
                    size: 40.0,
                    color: Colors.purple,
                  ),
                  Container(
                    child: RaisedButton(
                      child: Text('Contact',
                          style: TextStyle(
                            color: Color(0xff070808),
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
