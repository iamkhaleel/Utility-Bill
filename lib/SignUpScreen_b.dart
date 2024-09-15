import 'package:flutter/material.dart';
import 'package:flutter_application_2/Verification';
import 'package:flutter_application_2/theme.dart';
// Import your theme and styles

class SignUpScreen_b extends StatelessWidget {
  const SignUpScreen_b({super.key});

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
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: Text(
                'Finish Setting Up',
                style: AppTextStyles.heading2,
                textAlign: TextAlign.center,
              ),
            ),

            // First Name
            TextField(
              decoration: InputDecoration(
                labelText: 'State',
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
                labelText: 'Password',
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
                labelText: 'Confirm Password',
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
                labelText: 'Pin',
                labelStyle: AppTextStyles.body2,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),

            // State
            TextField(
              decoration: InputDecoration(
                labelText: 'Referral',
                labelStyle: AppTextStyles.body2,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Next Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmailVerificationScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
                backgroundColor: AppColors.primary,
              ),
              child: Text('Next', style: AppTextStyles.body1),
            ),
          ],
        ),
      ),
    );
  }
}
