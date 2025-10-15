import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> pets = [
  {'name': 'Buddy', 'type': 'Dog'},
  {'name': 'Mittens', 'type': 'Cat'},
  {'name': 'Chirpy', 'type': 'Bird'},
  {'name': 'Nemo', 'type': 'Fish'},
  {'name': 'Lolong', 'type': 'Crocodile'},
  {'name': 'Squidward', 'type': 'Octopos'},
  {'name': 'Shrek', 'type': 'Monster'},
  {'name': 'Boots', 'type': 'Monkey'},
  {'name': 'Son Guko', 'type': 'Saiyan'},
  {'name': 'Luffy', 'type': 'Pirate'},
  {'name': 'Oldenaria', 'type': 'CodeKing'},
  {'name': 'Jev', 'type': 'Skater'},
  {'name': 'Jarl', 'type': 'TypeKita'},
];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pet Adoption'),
        ),
        body: ListView.builder(
          itemCount: pets.length,
          itemBuilder: (context, index) {
            final pet = pets[index];
            return ListTile(
              leading: const Icon(Icons.pets),
              title: Text(pet['name']!),
              subtitle: Text(pet['type']!),
              trailing: TextButton(
                child: const Text('Adopt'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('You adopted ${pet['name']!}!')),
                  );
                },
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You selected ${pet['name']!} – ${pet['type']!}.')),
                );
              },
            );
          },
        ),
      ),
    );
  }
}