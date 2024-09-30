import 'package:flutter/material.dart';
import 'package:flutter_application_2/DisplaySubscribersPage.dart';
import 'package:flutter_application_2/HomePage.dart';
import 'package:flutter_application_2/theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                'Login',
                style: AppTextStyles.heading2,
                textAlign: TextAlign.center,
              ),
            ),
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

            // password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
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
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
                backgroundColor: AppColors.primary,
              ),
              child: const Text('Login', style: AppTextStyles.body1),
            ),
          ],
        ),
      ),
    );
  }
}
