import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Home cook",
          theme: ThemeData(
            primaryColor: Colors.blueAccent
          ),
          home: MainScreen()
      );      
    }
}