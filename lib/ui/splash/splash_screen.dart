import 'package:flutter/material.dart';
import 'package:myapp/data/restaurants_data.dart';
import 'package:myapp/ui/_core/app_colors.dart';
import 'package:myapp/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  final RestaurantsData restaurantsData;
  const SplashScreen({super.key, required this.restaurantsData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/banners/banner_splash.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo.png', width: 200),

                    const SizedBox(height: 24),
                    Column(
                      children: [
                        Text(
                          "Um parceiro inovador para sua",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "melhor experiência culinária!",
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                    const SizedBox(height: 32),

                    // Botão "Bora!"
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(restaurantsData: restaurantsData,),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFA451), // laranja do Figma
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        child: const Text("Bora!"),
                      ),
                    ),

                    const SizedBox(height: 40), // margem inferior
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}