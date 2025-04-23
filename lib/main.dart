import 'package:flutter/material.dart';
import 'package:myapp/data/restaurants_data.dart';
import 'package:myapp/model/restaurant.dart';
import 'package:myapp/ui/_core/app_theme.dart';
import 'package:myapp/ui/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  RestaurantsData restaurantsData = RestaurantsData();
  await restaurantsData.getRestaurants();
  runApp(MaterialApp(theme: AppTheme.appTheme, home: SplashScreen(restaurantsData: restaurantsData,)));
}
