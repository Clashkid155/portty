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
  bool check = false;
  bool _visible = true;
  var i = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _visible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var x = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.yellow,
      Colors.purple,
    ];
    Future.delayed(Duration(seconds: 8), () {
      print(i);

      setState(() {
        i >= 5 ? i = 0 : i++;
      });
    });

    Size mid = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: mid.height * 0.1,
            ),
            Stack(children: [
              GestureDetector(
                child: Center(
                  child: Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: x[i],
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2),
                      )
                    ]),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(check ? bitm : steam),
                      radius: 100,
                    ),
                  ),
                ),
                onTap: () {
                  setState(() => !check ? check = true : check = false);
                },
              ),
              Visibility(
                visible: _visible,
                child: AnimatedPositioned(
                  curve: Curves.easeInOut,
                  duration: Duration(seconds: 4),
                  top: mid.width * 0.45, //168,
                  right: mid.width * 0.01,
                  child: Text('Tap image to change'),
                ),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            Text(
              'Hi! I\'m Beluchukwu',
              style: TextStyle(fontSize: 20),
            ),
            Flexible(
              child: Text(
                'I\'m an aspiring mobile developer who is intrested in not just developing apps but also how the system works. I\'m also intrested in circuit programming and blockchain technology.',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
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
                // style: TextStyle(color: Colors.indigo),
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
                //style: TextStyle(color: Colors.indigo),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Skills/Stacks',
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
                Card(
                    elevation: 5,
                    child: Text(
                      'Python',
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  width: 10,
                ),
                ImageIcon(
                  AssetImage(flut),
                  //color: Colors.red,
                ),
                Card(
                    elevation: 5,
                    child: Text(
                      'Flutter',
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  width: 5,
                ),
                //Icon
              ],
            )
          ],
        ),
      )),
    );
  }
}
