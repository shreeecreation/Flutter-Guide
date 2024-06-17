import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterguide/src/core/themes/app_colors.dart';
import 'package:flutterguide/src/core/widgets/scaffold_wrapper.dart';
import 'package:flutterguide/src/features/home/presentation/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1500), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const HomePage()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      backgroundColor: AppColors.white,
      body: Center(
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // image: DecorationImage(
            //   image: Assets.images.bhurja.provider(),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: const Center(
            child: Text(
              'Forex Academy \n Limitless Learnings',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ).animate().fade(duration: 500.ms),
      ),
    );
  }
}
