import 'package:flutter/material.dart';

void main() {
  // --- PART 2: DART FUNDAMENTALS ---
  // This section is for your Dart exercises.
  // The output will appear in the debug console when you run the app.

  // TODO: Add comments explaining each code block.

  // 1. Declare at least one variable using each: int, double, String, bool.
  print('--- Dart Variables ---');
  int studentId = 2024001;
  double grade = 95.5;
  String studentName = "Alex Reyes";
  bool isEnrolled = true;
  print('ID: $studentId, Name: $studentName, Grade: $grade, Enrolled: $isEnrolled');

  // 2. Create a List or a Map and print their values.
  print('\n--- Dart Collections (List Example) ---');
  List<String> courses = ['CC 302', 'Data Structures', 'Web Development'];
  print('Courses: $courses');
  print('First course: ${courses[0]}');

  // 3. Write a for loop and a while loop that print numbers 1-5.
  print('\n--- For Loop ---');
  for (int i = 1; i <= 5; i++) {
    print('Number (for loop): $i');
  }

  print('\n--- While Loop ---');
  int j = 1;
  while (j <= 5) {
    print('Number (while loop): $j');
    j++;
  }

  // 4. Demonstrate final and const.
  print('\n--- Final and Const ---');
  final String university = 'Tech University of the Philippines'; // Determined at runtime
  const int establishedYear = 1901; // Known at compile time
  print('University: $university, Established: $establishedYear');


  // This line runs the Flutter App UI
  runApp(const PrelimExamApp());
}


// --- PART 3: FLUTTER UI IMPLEMENTATION ---

class PrelimExamApp extends StatelessWidget {
  const PrelimExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Removes the debug banner from the top right corner
      debugShowCheckedModeBanner: false,
      title: 'Prelim Exam App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The top bar of the app
      appBar: AppBar(
        title: const Text("Prelim App"),
        // Setting a different background color for the AppBar
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white, // Makes the title text white
      ),

      // The main content area of the screen
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          // Using a Column to arrange widgets vertically
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // First Text widget
              const Text(
                // TODO: Replace this string with your explanation on setting up the Flutter environment.
                'Flutter Setup: First, install the Flutter SDK from the official website. Second, set up an editor like VS Code or Android Studio with the Flutter and Dart extensions. Finally, run `flutter doctor` in your terminal to check if everything is configured correctly. To create a new app, use the command `flutter create my_app_name`.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              // A simple visual separator
              const SizedBox(height: 40),

              // Second Text widget
              const Text(
                // TODO: Replace this string with your explanation of the difference between Flutter and Dart.
                'Flutter vs. Dart: Dart is the object-oriented programming language used to code Flutter apps. Flutter is the UI toolkit/framework that contains the widgets, tools, and libraries to build the actual user interface for mobile, web, and desktop from a single Dart codebase.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),

      // The navigation bar at the bottom of the screen
      bottomNavigationBar: BottomNavigationBar(
        // Setting a different background color for the BottomNavigationBar
        backgroundColor: Colors.grey[200],
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
    );
  }
}