import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantsData {
  List<Restaurant> listRestaurant = [];
  Future<List<Restaurant>> getRestaurants() async {

    String jsonString = await rootBundle.loadString('assets/data.json'); 
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurantsData = data['restaurants'];

    for (var restaurantData in restaurantsData) {
      Restaurant restaurant = Restaurant.fromMap(restaurantData);
      listRestaurant.add(restaurant);
    }
    
    return listRestaurant;
  }
}
