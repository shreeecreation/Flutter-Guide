import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterguide/firebase_options.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'src/app/splash/presentation/pages/splash_page.dart';
import 'src/core/helpers/adaptive_helper.dart';
import 'src/core/widgets/adaptive_sizer_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'src/features/dashboard/pages/sidebar_menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AdaptiveHelper();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveSizer(
      designSize: Size(context.width, context.height),
      builder: (context) {
        return GetMaterialApp(
          builder: (context, child) {
            return ResponsiveBreakpoints.builder(
              child : child!,
              breakpoints: [
               const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
            );
          },
          title: 'Forex Academy',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: GoogleFonts.zillaSlab().fontFamily,
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashPage(),
          // home: const SidebarMenu(menu: "Type of Traders"),
        );
      },
    );
  }
}
