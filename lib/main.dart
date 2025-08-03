import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/volunteer_form_screen.dart';

void main() {
  runApp(NGOApp());
}

class NGOApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NGO Volunteer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/volunteer-form': (context) => VolunteerFormScreen(),
      },
    );
  }
}
