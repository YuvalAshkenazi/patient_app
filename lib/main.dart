import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
        _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
            title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.yellow,
                  child: Text('picture'),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    color: Colors.red,
                    child: Text('Patient data'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize:MainAxisSize.max,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.cyanAccent,
                      child: Text('Treatment details'),
                    )),
              ],
            )
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Emergency bell',
        child: Icon(Icons.add_alert),
        backgroundColor: Colors.red,
      ),

    );
  }
}
