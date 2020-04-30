import 'package:flutter/cupertino.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
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
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Navigation Bar'),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Hi, this is the text demo'),
              CupertinoButton(
                child: Text("Click me"),
                onPressed: () {},
              ),
              CupertinoButton.filled(
                onPressed: () {},
                child: Text('Click me'),
              ),
              CupertinoSlider(
                onChanged: (value) {},
                value: 10,
                min: 0,
                max: 100,
              ),
              CupertinoTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
