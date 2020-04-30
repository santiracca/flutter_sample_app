import 'package:flutter/material.dart';
import './screens/second_screen.dart';
import './widgets/infobar.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/second": (context) => SecondScreen(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Colors.white,
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.black),
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepOrange,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepOrange,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        brightness: Brightness.dark,
      ),
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
        child: Column(children: [
          InfoBar(
            content: 'This is the cool info bar',
          ),
          RaisedButton(
            child: Text('Go to second page'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => SecondScreen()),
              );
            },
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {},
      ),
    );
  }
}
