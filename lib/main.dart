import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/app/splash/presentation/pages/splash_page.dart';
import 'src/core/helpers/adaptive_helper.dart';
import 'src/core/widgets/adaptive_sizer_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AdaptiveHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveSizer(builder: (context) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
      );
    });
  }
}
