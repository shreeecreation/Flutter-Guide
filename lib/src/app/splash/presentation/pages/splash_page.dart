import 'dart:async';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterguide/src/core/core.dart';
import 'package:flutterguide/src/features/home/presentation/pages/home_page.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 3000), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (_) => const HomePage(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              child: Lottie.asset(
                Assets.json.trading,
              ),
            ),
            const Center(
              child: Text(
                'Forex Academy \n Limitless Learnings',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ).animate().fade(duration: 500.ms),
          ],
        ),
      ),
    );
  }
}
