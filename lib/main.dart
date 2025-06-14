import 'package:flutter/material.dart';
import 'package:home_page_design/view/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Feed App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF1A1A1A),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
