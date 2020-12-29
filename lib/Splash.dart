import 'package:flutter/material.dart';
import 'package:loopn/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          new Image(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Center(
            child: Image.asset(
              "assets/logoanim.gif",
              height: 500.0,
              width: 500.0,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:88.0),
              child: Text(
                "Find The Fun!",style: TextStyle(
                fontSize: 18,
                color: Colors.amberAccent
              ),
              ),
            )
          )

        ],
      )
    ));
  }

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 7000), () {
// Here you can write your code
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }
}
