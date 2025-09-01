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