import 'package:flutter/material.dart';

class FoodModel {
  final String? title;
  final double? price;
  final Image? image;

  FoodModel({this.image, this.price, this.title});
}
class FoodCategory{
  final Icon? icon;
  final String? name;

  FoodCategory({this.icon,this.name});

}