import 'package:flutter/material.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Image.asset('assets/${restaurant.imagePath}')]);
  }
}
