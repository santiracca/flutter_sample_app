import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Container(
        child: Column(
          children: [
            Text('Second Screen'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Go back to home page'),
            )
          ],
        ),
      ),
    );
  }
}
