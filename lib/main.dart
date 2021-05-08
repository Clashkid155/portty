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
      theme: ThemeData(
          fontFamily: 'Ltim',
          textTheme: TextTheme(
            bodyText2: TextStyle(fontSize: 16),
            bodyText1: TextStyle(fontSize: 16),
            //: TextStyle(fontSize: 16),
          ),
          brightness: Brightness.dark),
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
    Future.delayed(const Duration(seconds: 4), () {
      setState(() => _visible = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    var x = [
      Colors.red,
      Colors.cyan,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.yellow,
      Colors.purple,
    ];
    Future.delayed(Duration(seconds: 8), () {
      setState(() => i >= 5 ? i = 0 : i++);
    });

    Size mid = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('Hi'),
        actions: [
          Icon(Icons.ac_unit),
          SizedBox(
            width: 15,
          )
        ],
      ),*/
      body: Container(
        color: Colors.black54,
        height: mid.height,
        width: mid.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Center(
                  child: AnimatedContainer(
                    curve: Curves.bounceInOut,
                    duration: Duration(seconds: 3),
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: x[i],
                        spreadRadius: 6,
                        blurRadius: 4,
                        offset: Offset(0, 1),
                      )
                    ]),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(check ? bitm : steam),
                      radius: 65,
                    ),
                  ),
                ),
                onTap: () {
                  setState(() => !check ? check = true : check = false);
                },
              ),
              SizedBox(
                height: 15,
              ),
              AnimatedOpacity(
                opacity: _visible ? 1 : 0,
                duration: Duration(seconds: 3),
                curve: Curves.easeInOutCubic,
                child: Text('Tap image to change.'),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: mid.height * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          spreadRadius: 10,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hi there, I\'m ',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Beluchukwu.',
                          style: TextStyle(fontSize: 25, fontFamily: 'Caveat'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        'I\'m an aspiring mobile developer who is intrested in not just developing apps but also how the system works. I\'m also intrested in circuit programming and blockchain technology.',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Contact',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: ImageIcon(
                        AssetImage(git),
                        color: Colors.white,
                      ),
                      title: SelectableText(
                        ' @Clashkid155',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    ListTile(
                      leading: ImageIcon(
                        AssetImage(twit),
                        color: Colors.blue,
                      ),
                      title: SelectableText(
                        ' @x_steamer',
                        style: TextStyle(fontSize: 18),
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
                              ' Python ',
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
                              ' Flutter ',
                              style: TextStyle(fontSize: 18),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
