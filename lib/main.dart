import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Text one'),
            Row(
              children: [
                FlatButton(
                  child: Text('Text of Flat Button'),
                  onPressed: () {},
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text('Raised Button'),
                  color: Color(0xFFFF00),
                  elevation: 10,
                ),
                OutlineButton(
                  onPressed: () {},
                  child: Text('Outline Button'),
                )
              ],
            ),
            Switch(onChanged: (isEnabled) {}, value: true),
            Slider(
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              value: sliderValue,
              min: 0,
              max: 100,
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: Image(
                image: NetworkImage(""),
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Input',
                    hintText: 'Write here',
                    suffix: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    prefix: IconButton(
                      icon: Icon(
                        Icons.security,
                      ),
                      onPressed: () {},
                    )),
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {},
      ),
    );
  }
}
