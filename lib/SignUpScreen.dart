import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme.dart';
import 'SignUpScreen_b.dart'; // Import your theme and styles

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title Text
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: Text(
                'Continue to Signup',
                style: AppTextStyles.heading2,
                textAlign: TextAlign.center,
              ),
            ),

            // First Name
            TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: AppTextStyles.body2,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Last Name
            TextField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                labelStyle: AppTextStyles.body2,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Phone Number
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                labelStyle: AppTextStyles.body2,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),

            // Email
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: AppTextStyles.body2,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),

            // Next Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignUpScreen_b()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
                backgroundColor: AppColors.primary,
              ),
              child: const Text('Next', style: AppTextStyles.body1),
            ),
          ],
        ),
      ),
    );
  }
}
