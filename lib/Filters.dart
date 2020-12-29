import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loopn/weather.dart';

class Filters extends StatelessWidget {
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



  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var today= new DateTime(now.year, now.month, now.day);
    return Scaffold(

      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:15.0),
            child: Image.asset('assets/filter.png',
              color: Colors.white,
              height: 30,
              width: 30,),
          ),
        ],
        leading: Icon(Icons.perm_identity,
          color: Colors.white,),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
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
                  Row(
                    children: <Widget>[
                      Image.asset('assets/for_you.png',
                        color: Colors.pink,
                      height: 30,
                      width: 30,),
                      Text("My Family".toUpperCase()
                      ,style: TextStyle(
                          color: Colors.pink
                        ),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:68.0),
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, i) {
                  return Container(
                    color: Colors.white,
                    height: 450,
                    child: Column(
                      children: <Widget>[
                       i==0? Text("Elersile Auckland,New Zeeland | Birthday arts and craft shows",
                          style: TextStyle(
                              color: Colors.lightBlueAccent.withOpacity(0.5),
                              fontSize: 12
                          ),):Container(),
                        Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:10,right:10,top:8.0),
                              child: Container(
                                height: 230,
                                color: Colors.grey,
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:10,right:10,top:8.0),
                                  child: Container(
                                    color: Colors.black.withOpacity(0.3),
                                    height: 30,
                                    child: Row(

                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left:8.0),
                                          child: Text("0-6 years",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right:8.0),
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:12.0,left: 20),
                          child: Text("Fame Pre School And School Care",
                          style: TextStyle(
                            fontSize: 25
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:12.0),
                          child: Text("Fame - Pre School & School Care",
                            style: TextStyle(
                              color: Colors.blue,
                                fontSize: 22
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0,top:15),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:2.0),
                                  child: Text("6 Karepiro Drive, Stanmore Bay,Auckland - 30 KM",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16
                                    ),),
                                ),
                                width: 250,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0,right: 18.0,top: 5),
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        )


                      ],
                    ),
                  );
                }
              ),
            )
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
