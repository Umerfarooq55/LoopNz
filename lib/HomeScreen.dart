import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loopn/MyFamily.dart';
import 'package:loopn/weather.dart';

import 'Calender.dart';

class HomeScreen extends StatelessWidget {
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
  DateTime selectedDate = DateTime.now();
  final List<String> images = [
    "assets/signpost.png",
    "assets/stroller.png",
    "assets/early_childhood.png",
    "assets/birthdays.png",
    "assets/calender.png",
    "assets/ballon.png",
    "assets/duck.png",
    "assets/beaches_bikes.png",
    "assets/strollerr.png",
    "assets/strollerr.png",
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
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

        child:Stack(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top:68.0),
              child:  GridView.builder(
        itemCount: _listViewData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          double topPadding =18;
          topPadding =index==1?46.0:27.0;
          return new Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: colors[index],
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.only(top:topPadding),
                    child: Image.asset(images[index],
                      height: 50,
                      color:Colors.white,
                      width: 50,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: new Text(

                      _listViewData[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),
                  ),
                ],
              )
            ),
          );
        },
      ),
            ),
            Container(
              color: Colors.white,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: GestureDetector(
                      onTap: (){
                        CupertinoDatePicker(
                          minimumDate: today,
                          minuteInterval: 1,
                          mode: CupertinoDatePickerMode.dateAndTime,
                          onDateTimeChanged: (DateTime dateTime) {
                            print("dateTime: ${dateTime}");
                          },
                        );
                      },
                      child: GestureDetector(
                        onTap: (){
                          _selectDate(context);
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.calendar_today,
                              color: Colors.lightBlueAccent,),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text("Calender".toUpperCase()),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Weather()));
                    },
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/cloud.png',
                          color: Colors.lightBlueAccent,
                          height: 40,
                          width: 40,),
                        Text("Weather".toUpperCase()),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => MyFamily()));
                    },
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/for_you.png',
                          color: Colors.lightBlueAccent,
                        height: 30,
                        width: 30,),
                        Text("My Family".toUpperCase()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )

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
