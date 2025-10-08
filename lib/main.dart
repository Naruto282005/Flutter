import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> fruits = ['Jev', 'Jay', 'Leonard', 'Raymundo', 'Francis', 'Jumlord', 'Jomari', 'Jomel', 'Jomike', 'Jomarie'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Friend Names'),
        ),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
              child: ListTile(
                leading: const Icon(Icons.local_grocery_store),
                title: Text(fruit),
                subtitle: Text('Item Number: ${index + 1}'),
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('You tapped $fruit!'))
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}