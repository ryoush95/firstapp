import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'first app', //앱자체 이름
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/www.jpg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.red,
              thickness: 2,
              endIndent: 30,
            ),
            Text('name',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('wow',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(
              height: 30,
            ),
            Text('power',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('55',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            Row(
              children: [
                Icon(Icons.check),
                Text("using saber",
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1
                  ),)
              ],
            ),
            Row(
              children: [
                Icon(Icons.check),
                Text("attack",
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1
                  ),)
              ],
            ),
            Row(
              children: [
                Icon(Icons.check),
                Text("fire",
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1
                  ),)
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/ppp.png"),
                radius: 40,
                backgroundColor: Colors.blue,
              ),
            )
          ],
        ),
      ),

      // body: Center(//center 가로정렬
      //   child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,//세로정렬
      //       children: [
      //         Text('hello'),
      //         Text('hello'),
      //         Text('hello'),
      //       ],
      //     ),
      // ),


    );
  }
}


