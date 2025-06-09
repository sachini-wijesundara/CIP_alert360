import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  Widget _buildImage(String path, {required double width, required double height}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        path,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF5F5),
              Color(0xFFFF6F61),
              Color(0xFFE53935),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),

              // Logo and Title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png', height: 60),
                  const SizedBox(width: 20),
                  const Text(
                    'Stay Safe, Stay Alert',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Stacked Image Section
              SizedBox(
                height: 600,
                child: Stack(
                  children: [
                    Positioned(
                      top: 40,
                      left: 0,
                      child: _buildImage('assets/image1.png', width: 120, height: 250),
                    ),
                    Positioned(
                      top: 65,
                      left: 115,
                      child: _buildImage('assets/image2.png', width: 100, height: 250),
                    ),
                    Positioned(
                      top: 40,
                      right: 95,
                      child: _buildImage('assets/image3.png', width: 120, height: 220),
                    ),
                    Positioned(
                      top: 65,
                      right: 0,
                      child: _buildImage('assets/image4.png', width: 100, height: 250),
                    ),
                    Positioned(
                      top: 290,
                      left: 0,
                      child: _buildImage('assets/image5.png', width: 120, height: 230),
                    ),
                    Positioned(
                      top: 300,
                      left: 95,
                      child: _buildImage('assets/image6.png', width: 120, height: 290),
                    ),
                    Positioned(
                      top: 250,
                      right: 95,
                      child: _buildImage('assets/image7.png', width: 100, height: 240),
                    ),
                    Positioned(
                      top: 300,
                      right: 0,
                      child: _buildImage('assets/image8.png', width: 100, height: 230),
                    ),
                  ],
                ),
              ),

              // Get Started Button
              // Entire screen remains the same until here...

              const Spacer(),

              // Get Started Button at the bottom with custom color and stroke
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: OutlinedButton(
                  onPressed: () {
                    // Navigate to selection screen or next step
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xFF850101), // Deep red background
                    foregroundColor: Colors.white, // Text color
                    side: const BorderSide(color: Colors.white, width: 2), // White stroke
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Get started',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}