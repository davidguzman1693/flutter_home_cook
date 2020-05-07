import 'package:flutter/material.dart';
import 'package:home_cook/src/scoped-model/food-model.dart';
import 'package:home_cook/src/widgets/food_category.dart';
import '../widgets/home_top_info.dart';
import '../widgets/search_field.dart';
import '../widgets/bought_foods.dart';


import '../models/food_model.dart';

class HomePage extends StatefulWidget{
  final FoodModel foodModel;

  HomePage(this.foodModel);
    @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  
  @override
  void initState(){
    widget.foodModel.fetchFood();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: ListView(
            padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
            children: <Widget>[
              HomeTopInfo(),
              FoodCategory(),
              SizedBox(height: 20.0,),
              SearchField(),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Frequently bought Foods",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),),
                  GestureDetector(
                      onTap: (){},
                      child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Column(
                children: widget.foodModel.foods.map(_buildFoodItems).toList(),
              ),
            ],
        ),
    );
  }

  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }

}