import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        buttonTheme: ButtonThemeData(buttonColor: Colors.brown),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, color: Colors.lightBlue),
        ),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.body1,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontFamily: 'RobotoMono'),
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                  fontFamily: 'RobotoMono', fontWeight: FontWeight.w700),
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                  fontFamily: 'RobotoMono', fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
          elevation: 8,
        ),
     
    );
  }
}
