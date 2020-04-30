import 'package:flutter/material.dart';
import 'package:coursesUiApp/screens/HomeSreen/HomeSreen.dart';
import 'package:coursesUiApp/screens/CourseDetailScreen/CourseDetailScreen.dart';

void main() => runApp(CoursesApp());

class CoursesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/courseDetail': (context) => CourseDetailScreen()
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color(0xFF4E515B),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}