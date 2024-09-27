import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/theme.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: Text(
                'Email Verification',
                style: AppTextStyles.heading2,
                textAlign: TextAlign.center,
              ),
            ),
            // Verification Instructions
            Text(
              'A Verification Code Has Been Sent To Your Email. Please Provide The Code Below To Verify Your Account.\n\n'
              'If You Can\'t Find The Verification Code, Please Do Check Your Spam Folder.',
              textAlign: TextAlign.center,
              style: AppTextStyles.body1.copyWith(color: AppColors.primary),
            ),
            const SizedBox(height: 40),

            // Verification Code Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Verification Code',
                labelStyle: AppTextStyles.body2,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
              ),
              keyboardType: TextInputType.number,
              maxLength: 4, // Limit input to 4 digits
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ], // Allow only digits
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Resend Email Button
            TextButton(
              onPressed: () {
                // Logic to resend verification email
              },
              child: Text('Resend Email',
                  style:
                      AppTextStyles.body2.copyWith(color: AppColors.primary)),
            ),
            const SizedBox(height: 40),

            // Verify Button
            ElevatedButton(
              onPressed: () {
                // Logic to verify the code
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.5),
                ),
                backgroundColor: AppColors.primary,
              ),
              child: const Text('Verify', style: AppTextStyles.body1),
            ),
          ],
        ),
      ),
    );
  }
}
