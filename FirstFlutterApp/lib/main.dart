import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _colors = [Colors.red, Colors.blue, Colors.orange, Colors.green];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
         title: Text('New Flutter App')
       ),
        body: Center(
          child: Text('Hello World!',
              style: TextStyle(color: _colors[index%_colors.length], fontSize: 25.0),
          )
        ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                index++;
              });
            },
            child: Icon(Icons.add),
          ),
      ),
    );
  }
}
