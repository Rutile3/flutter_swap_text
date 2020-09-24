import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swap Demo',
      home: MyHomePage(title: 'Swap Demo Home Page'),
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
  final _origin = new TextEditingController();
  final _destination = new TextEditingController();
  String _text;

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
              "$_text",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              controller: _origin,
              decoration: const InputDecoration(
                hintText: '出発地を入力',
                icon: Icon(Icons.directions_walk),
              ),
              enabled: true,
              onSubmitted: _onSubmitted,
            ),
            TextField(
              controller: _destination,
              decoration: const InputDecoration(
                hintText: '目的地を入力',
                icon: Icon(Icons.flag),
              ),
              enabled: true,
              onSubmitted: _onSubmitted,
            ),
          ],
        ),
      ),
    );
  }

  void _onSubmitted(String e) {
    final text01 = _origin.text;
    final text02 = _destination.text;
    setState(() {
      _text = "$text01 => $text02";
    });
  }
}
