import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbar'),
      ),
      body: Center(
        child: Text('bbbb',
        style: TextStyle(
          fontSize: 25
        ),),
      ),
    );
  }
}
