import 'package:flutter/material.dart';
import 'package:home_cook/src/scoped-model/main_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget{

    final MainModel mainModel = MainModel();
    
    @override
    Widget build(BuildContext context){
      return ScopedModel<MainModel>(
        model: mainModel, 
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Home cook",
          theme: ThemeData(
            primaryColor: Colors.blueAccent
          ),
          home: MainScreen(model: mainModel)
      )        
      );
    }
}