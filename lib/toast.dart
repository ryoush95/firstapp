import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      body: Center(
        child: FlatButton(
          onPressed: () {
            toast();
          },
          child: Text('toast'),
          color: Colors.red,
        ),
      ),
    );
  }
}

void toast() {
  Fluttertoast.showToast(
      msg: 'toast',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.teal,
      fontSize: 20,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
