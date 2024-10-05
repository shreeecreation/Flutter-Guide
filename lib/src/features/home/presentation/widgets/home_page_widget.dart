import 'package:flutterguide/src/core/core.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../dashboard/pages/sidebar_menu.dart';

void navigateToHomePage(String menu) {
  final context = Get.context;
  Navigator.push(
    context!,
    MaterialPageRoute(
      builder: (_) => SidebarMenu(
        menu: menu,
      ),
    ),
  );
}

class HomePageHelpers {
  static String discordUrl = 'https://discord.gg/exvqCvcy';

  List<Widget> drawerItems = [
    ListTile(
      leading: const Icon(Icons.school),
      title: Text(
        "Learn",
        style: AppStyles.text18PxMedium,
      ),
      onTap: () {
        navigateToHomePage("Introduction");
      },
    ),
    ListTile(
      leading: const Icon(Icons.analytics),
      title: Text("Trading Plan", style: AppStyles.text18PxMedium),
      onTap: () {
        navigateToHomePage("Trading Plans");
      },
    ),
    ListTile(
      leading: const Icon(Icons.contact_phone),
      title: Text("Contact", style: AppStyles.text18PxMedium),
      onTap: () {
        navigateToHomePage("Introduction");
      },
    ),
  ];

  List<Widget> navItems = [
    TextButton(
      onPressed: () {
        navigateToHomePage("Introduction");
      },
      child: Text("Learn", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {
        navigateToHomePage("Entry Models");
      },
      child: Text("Entry Models", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {
        navigateToHomePage("Candlesticks");
      },
      child: Text("CandleSticks", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {
        navigateToHomePage("Trading Plans");
      },
      child: Text("Rules", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {
        navigateToHomePage("Contact");
      },
      child: Text("Contact", style: AppStyles.text18PxMedium.white),
    ),
    10.hSpace,
    InkWell(
        onTap: () async {
          launchUrlString(discordUrl);
        },
        child: Lottie.asset(Assets.json.letsgo, height: 150, width: 150, reverse: true)),
    100.hSpace,
  ];
  final List<Map<String, dynamic>> hallOfFamers = [
    {
      "name": "George Soros",
      "imageUrl": Assets.images.hallOfNames.george.path,
    },
    {
      "name": "Paul Tudor Jones",
      "imageUrl": Assets.images.hallOfNames.paul.path,
    },
    {
      "name": "Bill Lipschutz",
      "imageUrl": Assets.images.hallOfNames.bill.path,
    },
    {
      "name": "Stanley Druckenmiller",
      "imageUrl": Assets.images.hallOfNames.stanley.path,
    },
    {
      "name": "Michael Marcus",
      "imageUrl": Assets.images.hallOfNames.marcus.path,
    },
  ];
}
