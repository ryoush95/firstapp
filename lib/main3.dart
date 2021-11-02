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
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: FlatButton(
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(SnackBar(
                    content: Text('wow'),
                  ));
                },
                child: Text(
                  'bt',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
            );
          },
        )
    );
  }
}
