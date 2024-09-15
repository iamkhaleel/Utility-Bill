import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'theme.dart';
import 'SignUpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                buildPage(
                  image: '../assets/onboarding1.png', // Using onboarding2.png
                  title: 'Pay bills & Topup',
                  description:
                      'Pay your bills and top up your phone or others with ease.',
                ),
                buildPage(
                  image: '../assets/onboarding2.png', // Using onboarding2.png
                  title: 'Make payments from anywhere easily',
                  description:
                      'Make payments securely and safely from anywhere in the world.',
                ),
                buildPage(
                  image: '../assets/onboarding3.png', // Using onboarding2.png
                  title: 'Paperless transactions',
                  description:
                      'Enjoy seamless and paperless transactions right from your phone.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SmoothPageIndicator(
            controller: _pageController, // PageController
            count: 3,
            effect: const WormEffect(
              dotHeight: 12,
              dotWidth: 12,
              activeDotColor: AppColors.primary,
              dotColor: Colors.grey,
            ),
          ),
          const SizedBox(height: 30, width: 60),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 40.0), // Reduce width of buttons
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        const Size(double.infinity, 60), // Increased height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          3.5), // Set border radius to 0.5
                    ),
                    backgroundColor:
                        AppColors.primary, // Updated to backgroundColor
                  ),
                  child: const Text('Create an Account'),
                ),
                const SizedBox(height: 16), // Add space between the buttons
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    minimumSize:
                        const Size(double.infinity, 60), // Increased height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          3.5), // Set border radius to 0.5
                    ),
                    textStyle: AppTextStyles.body1.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  child: const Text('Try Login Now'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40), // Add some space at the bottom
        ],
      ),
    );
  }

  Widget buildPage({
    required String image,
    required String title,
    required String description,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 150.0,
          width: 150.0, // Reduced width
        ),
        const SizedBox(height: 30),
        Text(
          title,
          style: AppTextStyles.heading2.copyWith(color: AppColors.primary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: AppTextStyles.body2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
