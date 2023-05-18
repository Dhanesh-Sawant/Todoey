import 'package:flutter/material.dart';
import 'Screens/Tasks_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.lightBlueAccent)
    )
    );
  }
}
