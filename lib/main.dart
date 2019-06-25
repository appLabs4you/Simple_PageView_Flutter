import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PageView Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
//      home: Scaffold(
//        body: PageView(),
//      ),

      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Page View"),
        ),
        body: PageView(
          children: <Widget>[
            Container(
              child: Center(child:Text("Page 1")),
              color: Colors.red,
            ),
            Container(
              child: Center(child:Text("Page 2")),
              color: Colors.blueAccent,
            )
            ,
            Container(
              child: Center(child:Text("Page 3")),
              color: Colors.amberAccent,
            ),
            Container(
              child: Center(child:Text("Page 4")),
              color: Colors.cyanAccent,
            ),
            Container(
              child: Center(child:Text("Page 5")),
              color: Colors.green,
            ),
            Container(
              child: Center(child:Text("Page 6")),
              color: Colors.purpleAccent,
            ),
            Container(
              child: Center(child:Text("Page 7")),
              color: Colors.yellowAccent,
            )
          ],
          scrollDirection: Axis.vertical,
          pageSnapping: true,
          physics: BouncingScrollPhysics(),
          onPageChanged: (num){
            print("Current page number is "+num.toString());
          },
     //     physics: ClampingScrollPhysics(),
        ),
      ),
    );
  }
}
