import 'package:flutter/material.dart';
import '../core/utils/app_assets.dart';
import '../core/utils/app_colors.dart';
import '../core/utils/app_text_styles.dart';
import '../core/widgets/custom_explore_button.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Image.asset(AppImages.onBoarding),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Explore\nThe\nUniverse',
                style: AppTextStyles.headLine,
              ),
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: CustomExploreButton(
              text: 'Explore',
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
