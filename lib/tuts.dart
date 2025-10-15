// Inside a function, like main()
//Variables
int age = 20;                   // For whole numbers
double price = 99.99;            // For decimal numbers
String greeting = "Hello, Dart!"; // For text
bool isFlutterFun = true;        // For true/false values


//List
List<String> fruits = ['Apple', 'Banana', 'Orange'];
print(fruits); // Prints the whole list
print(fruits[0]); // Prints 'Apple'



//Map
Map<String, dynamic> person = {
  'name': 'Juan dela Cruz',
  'age': 25,
  'isStudent': true
};
print(person); // Prints the whole map
print(person['name']); // Prints 'Juan dela Cruz'



//For Loop
for (int i = 1; i <= 5; i++) {
  print(i);
}



//while loop
int i = 1;
while (i <= 5) {
  print(i);
  i++; // Don't forget to increment, or you'll have an infinite loop!
}

//final variable
final String name = 'YourName';
final DateTime now = DateTime.now(); // This works because it's calculated at runtime.




// const varible
const double pi = 3.14159;
// const DateTime now = DateTime.now(); // This would cause an ERROR.




//create scafold with appbar
Scaffold(
  appBar: AppBar(
    title: Text("Prelim App"),
    backgroundColor: Colors.blue, // Example color
  ),
  body: // ... Body content will go here
);



//add bottom navigator
Scaffold(
  // ... appBar is here
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.lightBlueAccent, // Example color
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ],
  ),
  // ... body is here
);



//center text widget
Scaffold(
  // ... appBar and bottomNavigationBar
  body: Center(
    child: Text(
      'Here you will write the steps on how to setup the environment...',
      textAlign: TextAlign.center, // Makes the text itself centered
    ),
  ),
);










// September 10 2025

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(24.0),
//         margin: EdgeInsets.fromLTRB(30.0, 20.0, 23.0, 20.0),
//         color: const Color.fromARGB(255, 201, 188, 188),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               children:[
//                 Padding(
//                   padding: EdgeInsets.all(10),
//                   child: Text('This is My Heading Column Flutter Activity'),
//                 ),
//               ],
//             ),
//             Row(
//               children: const[
//                 Padding(
//                   padding: EdgeInsets.all(10),
//                   child: Icon(Icons.home, size:40, color: Colors.blue,),
//                 ),
//                 Text('Hello World'),
//                 Icon(Icons.favorite, size:40, color: Colors.red,),
//                 Text('Everything People'),
//                 Icon(Icons.warning, size:40, color: Colors.amber,),
//               ],
//             ),
//             Column(
//               children:[Text('Flutter Run'), Text('Flutter Doctor')],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }










// PAST ACTIVITY

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Static Flutter App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override 
//   Widget build(BuildContext context){
//     return Scaffold(
//       body:Column(
//         children: [
//           Expanded(
//             child: Container(
//               color: Colors.black,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.green,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.yellow,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.red,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }











// Past Activity 



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final List<String> fruits = ['Jev', 'Jay', 'Leonard', 'Raymundo', 'Francis', 'Jumlord', 'Jomari', 'Jomel', 'Jomike', 'Jomarie'];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Friend Names'),
//         ),
//         body: ListView.builder(
//           itemCount: fruits.length,
//           itemBuilder: (context, index) {
//             final fruit = fruits[index];
//             return Card(
//               margin: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
//               child: ListTile(
//                 leading: const Icon(Icons.local_grocery_store),
//                 title: Text(fruit),
//                 subtitle: Text('Item Number: ${index + 1}'),
//                 onTap: (){
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('You tapped $fruit!'))
//                   );
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }