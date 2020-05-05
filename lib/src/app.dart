import 'package:flutter/material.dart';
import 'package:home_cook/src/scoped-model/food-model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget{

    final FoodModel foodModel = FoodModel();
    
    @override
    Widget build(BuildContext context){
      return ScopedModel<FoodModel>(
        model: foodModel, 
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Home cook",
          theme: ThemeData(
            primaryColor: Colors.blueAccent
          ),
          home: MainScreen(foodModel: foodModel)
      )        
      );
    }
}