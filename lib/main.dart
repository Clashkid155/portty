import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steam Portfolio',
      home: Portty(),
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Portty extends StatefulWidget {
  @override
  _PorttyState createState() => _PorttyState();
}

class _PorttyState extends State<Portty> {
  final String bitm = 'image/bitm.png';
  final String steam = 'image/steam.jpg';
  final String git = 'image/git.png';
  final String twit = 'image/tw.png';
  final String py = 'image/py.png';
  final String flut = 'image/flut.png';
  @override
  Widget build(BuildContext context) {
    Size mid = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: mid.height * 0.1,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(steam),
              radius: 100,
            ),
          ),
          Text(
            'Hi, I\'m Beluchukwu Njike popularly known as Steam.',
            style: TextStyle(fontSize: 20),
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  'I\'m an aspiring mobile developer who is intrested in not just developing apps but also how the system works. I\'m also intrested in circuit programming and blockchain technology',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            //alignment: Alignment.centerLeft,
            child: Text(
              'Contact',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            // tileColor: Colors.grey.shade100,
            leading: ImageIcon(
              AssetImage(git),
              color: Colors.white,
            ),
            title: SelectableText(
              ' @Clashkid155',
              style: TextStyle(color: Colors.indigo),
            ),
          ),
          ListTile(
            //tileColor: Colors.grey.shade100,
            leading: ImageIcon(
              AssetImage(twit),
              color: Colors.blue,
            ),
            title: SelectableText(
              ' @x_steamer',
              style: TextStyle(color: Colors.indigo),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Skills',
                style: TextStyle(fontSize: 18),
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ImageIcon(
                AssetImage(py),
              ),
              Card(child: Text('Python')),
              SizedBox(
                width: 10,
              ),
              ImageIcon(
                AssetImage(flut),
                //color: Colors.red,
              ),
              Card(child: Text('Flutter')),
              SizedBox(
                width: 5,
              ),
              //Icon
            ],
          )
        ],
      )),
    );
  }
}
