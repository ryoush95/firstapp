import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Title'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
              child: Text('2222'),
              color: Colors.red,),
              MaterialButton(onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
              child: Text('3333'),
              color: Colors.blue,)
            ],
          ),
        ));
  }
}
