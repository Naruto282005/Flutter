import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Static Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(24.0),
        margin: EdgeInsets.fromLTRB(30.0, 20.0, 23.0, 20.0),
        color: const Color.fromARGB(255, 201, 188, 188),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children:[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('This is My Heading Column Flutter Activity'),
                ),
              ],
            ),
            Row(
              children: const[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.home, size:40, color: Colors.blue,),
                ),
                Text('Hello World'),
                Icon(Icons.favorite, size:40, color: Colors.red,),
                Text('Everything People'),
                Icon(Icons.warning, size:40, color: Colors.amber,),
              ],
            ),
            Column(
              children:[Text('Flutter Run'), Text('Flutter Doctor')],
            ),
          ],
        ),
      ),
    );
  }
}