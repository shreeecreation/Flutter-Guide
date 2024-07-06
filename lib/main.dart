import 'package:flutter/material.dart';
import 'package:flutterguide/src/features/dashboard/pages/sidebar_menu.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/app/splash/presentation/pages/splash_page.dart';
import 'src/core/helpers/adaptive_helper.dart';
import 'src/core/widgets/adaptive_sizer_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AdaptiveHelper();
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
            return ResponsiveWrapper.builder(
              child!,
              breakpoints: [
                const ResponsiveBreakpoint.resize(480, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ],
            );
          },
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: GoogleFonts.zillaSlab().fontFamily,
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashPage(),
          // home: const SidebarMenu(menu: "Entry Models"),
        );
      },
    );
  }
}
