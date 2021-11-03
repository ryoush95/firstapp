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
      body: Homebody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('wow'),
              duration: Duration(seconds: 5),
              action: SnackBarAction(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => thirthpage()));
                },
                label: 'undo',
              ),
            ),
          );
        },
      ),
    );
  }
}

class Homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => secpage()));
              },
              child: Text(
                'btbt',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print('text');
              },
              child: Text(
                'text',
                style: TextStyle(fontSize: 20),
              ),
              style: TextButton.styleFrom(primary: Colors.teal),
            ),
            OutlinedButton(
              onPressed: () {
                print('outline');
              },
              child: Text(
                'outline',
              ),
              style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  side: BorderSide(color: Colors.black12, width: 3)),
            ),
            TextButton.icon(
              onPressed: () {
                print('home');
              },
              label: Text('home'),
              icon: Icon(
                Icons.delete,
                size: 30,
                color: Colors.red,
              ),
            ),
            ButtonBar(
              alignment : MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: Text('yyy')),
                ElevatedButton(onPressed: () {}, child: Text('nnn'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class secpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('good'),
      ),
    );
  }
}

//구버전
class Mysnackbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'snackbar',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
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

class thirthpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'snackbar',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
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
