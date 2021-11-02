import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'first app', //앱자체 이름
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
      ),
      body: Mysnackbar(),
    );
  }
}

class Mysnackbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('snackbar',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white
            ),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
          ),
          );
        },
        child: Text('snack'),
      ),
    );
  }
}
