import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loopn/HomeScreen.dart';

class Weather extends StatelessWidget {
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
  int index=0;

  final List<String> images = [
    "assets/signpost.png",
    "assets/stroller.png",
    "assets/early_childhood.png",
    "assets/birthdays.png",
    "assets/calender.png",
    "assets/ballon.png",
    "assets/duck.png",
    "assets/beaches_bikes.png",
    "assets/stroller.png",
    "assets/stroller.png",
    "assets/showsevents.png",
    "assets/holiday_program.png",
    "assets/playground.png",
    "assets/eating_out.png",
    "assets/beaches_bikes.png",
  ];

  final List<Color> colors =
  <Color>[
    Color(0xFF63A945),
    Color(0xFFCDA9DD),
    Color(0xFF9F03B3),
    Color(0xFFFFD7FF),
    Color(0xFFFFEB00),
    Color(0xFFFF86C5),
    Color(0xFF81E4F8),
    Colors.teal,
    Colors.blue,
    Colors.deepPurple,
    Colors.pink,
    Colors.orange,
    Colors.amber,
    Color(0xFF9F03B3),
    Colors.amber,
    Color(0xFF9F03B3),
    Colors.amber,
    Color(0xFF9F03B3),

    Colors.amber,
    Color(0xFF9F03B3),
  ];
  final List<String> _listViewData = [
    "Family Accomendation".toUpperCase(),
    "Dream Childcare".toUpperCase(),
    "Early Childcare".toUpperCase(),
    "Birthday ".toUpperCase(),
    "Term Time".toUpperCase(),
    "Daily Fun".toUpperCase(),
    "For Bubs".toUpperCase(),
    "Beaches & Bikes".toUpperCase(),
    "Latest".toUpperCase(),
    "Deals".toUpperCase(),
    "Events & Shows".toUpperCase(),
    "Holiday Time".toUpperCase(),
    "PlayGround and Parks".toUpperCase(),
    "Eating OUT".toUpperCase(),
  ];


  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var today= new DateTime(now.year, now.month, now.day);
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.perm_identity,
          color: Colors.white,),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Image.asset(
              'assets/loop.png',
              height: 100.0,
              width: 100.0,
            ),
          ),
        ),
      ),
      body: Container(

        child:  Padding(
          padding: const EdgeInsets.all(6.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft:  Radius.circular(35),
                topRight: Radius.circular(35)
              ),
            ),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  height: 120,
                  color:Colors.teal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.wb_sunny,
                        color: Colors.white,
                      size: 45,),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("October, Tuesday  27th",
                            style:TextStyle(
                              fontSize: 17,
                              fontWeight:FontWeight.bold,
                              color: Colors.white
                            ),),
                            Text("21 ℃",
                              style:TextStyle(
                                  fontSize: 27,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                            Text("Mount Wellington, NZ",
                              style:TextStyle(
                                  fontSize: 14,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                            Text("Overcast Clouds",
                              style:TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  color: Color(0xFF00796b),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.cloud_queue,
                        color: Colors.white,
                        size: 45,),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("October, Tuesday  27th",
                              style:TextStyle(
                                  fontSize: 17,
                                  fontWeight:FontWeight.bold,
                                  color: Colors.white
                              ),),
                            Text("21 ℃",
                              style:TextStyle(
                                  fontSize: 27,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                            Text("Mount Wellington, NZ",
                              style:TextStyle(
                                  fontSize: 14,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                            Text("Overcast Clouds",
                              style:TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  color:Color(0xFF00695c),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.asset(
                        'assets/rain.png',
                        height: 45.0,
                        color: Colors.white,
                        width: 45.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("October, Tuesday  27th",
                              style:TextStyle(
                                  fontSize: 17,
                                  fontWeight:FontWeight.bold,
                                  color: Colors.white
                              ),),
                            Text("21 ℃",
                              style:TextStyle(
                                  fontSize: 27,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                            Text("Mount Wellington, NZ",
                              style:TextStyle(
                                  fontSize: 14,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                            Text("Overcast Clouds",
                              style:TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  color:Color(0xFF004d40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.asset(

                        'assets/rain.png',
                        height: 45.0,
                        color: Colors.white,
                        width: 45.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("October, Tuesday  27th",
                              style:TextStyle(
                                  fontSize: 17,
                                  fontWeight:FontWeight.bold,
                                  color: Colors.white
                              ),),
                            Text("21 ℃",
                              style:TextStyle(
                                  fontSize: 27,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                            Text("Mount Wellington, NZ",
                              style:TextStyle(
                                  fontSize: 14,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                            Text("Overcast Clouds",
                              style:TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.white
                              ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: 60,
                    width: 350,
                    color:Color(0xFFf48fb1),
                    child: Center(
                      child: Text(
                        "Close".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),
                    ),

                  ),
                )
              ],
            ),

          ),
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
        items:  <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              icon:  Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Image.asset('assets/home.png',
                height: 30,
                color: index ==0?Colors.lightBlueAccent:Colors.amberAccent,
                width: 30,),
              ),
              title: Text(''),
          ),
          BottomNavigationBarItem(
            icon:  GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext builder) {
                      return Container(
                          height: MediaQuery.of(context).copyWith().size.height / 3,
                          child: CupertinoDatePicker(
                            initialDateTime: DateTime.now(),
                            onDateTimeChanged: (DateTime newdate) {
                              print(newdate);
                            },
                            use24hFormat: true,
                            maximumDate: new DateTime(2040, 12, 30),
                            minimumYear: 2010,
                            maximumYear: 2030,
                            minuteInterval: 1,
                            mode: CupertinoDatePickerMode.dateAndTime,
                          ));
                    });
              },
              child: Image.asset('assets/menu_ticket.png',
                height: 40,
                color: index ==0?Colors.lightBlueAccent:Colors.amberAccent,
                width: 40,),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/search.png',
              height: 28,
              color: index ==0?Colors.lightBlueAccent:Colors.amberAccent,
              width: 28,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.favorite_border,

            color: Colors.lightBlueAccent,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/bell.png',
              height: 40,
              color: index ==0?Colors.red:Colors.amberAccent,
              width: 40,),
            title: Text(''),
          ),


        ],
      ),
    );
  }
}
