import 'package:flutter/material.dart';
import 'package:food_delivery_app/Models/food_model.dart';

List<FoodModel> listOfFood = [
  FoodModel(title: 'quinoa',
  image: Image.asset('assets/images/quinoa.webp',fit: BoxFit.cover),
  price: 20),
  FoodModel(title: 'asparagus',
  image: Image.asset('assets/images/asparagus.webp',fit: BoxFit.cover),
  price: 18),
  FoodModel(title: 'chicken lolipop',
  image: Image.asset('assets/images/chicken_lolipop.jpg',fit: BoxFit.cover),
  price: 15),
  FoodModel(title: 'chowmein',
  image: Image.asset('assets/images/chowmein.jpg',fit: BoxFit.cover),
  price: 10),
  FoodModel(title: 'golgappe',
  image: Image.asset('assets/images/golgappe.jpg',fit: BoxFit.cover),
  price: 12),
];

List<FoodCategory> listOfCategory=[
  FoodCategory(icon: Icon(Icons.energy_savings_leaf),
  name: 'Vegan'),
  FoodCategory(icon: Icon(Icons.coffee),
  name: 'Coffee'),
  FoodCategory(icon: Icon(Icons.donut_small_sharp),
  name: 'Donuts'),
  FoodCategory(icon: Icon(Icons.icecream),
  name: 'Ice cream'),
  FoodCategory(icon: Icon(Icons.rice_bowl_outlined),
  name: 'Dessert')
];