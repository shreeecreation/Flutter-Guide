import 'package:flutterguide/src/core/core.dart';
import 'package:flutterguide/src/features/dashboard/pages/sidebar_menu.dart';
import 'package:get/get.dart';

class InfoCardWidgets extends StatelessWidget {
  const InfoCardWidgets({
    super.key,
  });
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Get engaged with FX Academy features", style: AppStyles.text24PxMedium.white),
        30.vSpace,
        Row(
          children: [
            20.hSpace,
            InfoCard(
              title: "Learn",
              description: "Learn the basics of trading and how to use the platform",
              buttonText: "Start Learning",
              onButtonPressed: () {
                // Handle Learn button press
                navigateToHomePage("Introduction");
              },
            ),
            20.hSpace,
            InfoCard(
              title: "Analysis",
              description: "Learn how to analyze the market and make informed decisions",
              buttonText: "Start Analyzing",
              onButtonPressed: () {
                // Handle Analysis button press
                navigateToHomePage("Learn");
              },
            ),
            20.hSpace,
          ],
        ),
        30.vSpace,
        Row(
          children: [
            20.hSpace,
            InfoCard(
              title: "Entry Models",
              description: "Start exploring the best entry models for trading",
              buttonText: "Start Exploring",
              onButtonPressed: () {
                // Handle Learn button press
                navigateToHomePage("Entry Models");
              },
            ),
            20.hSpace,
            InfoCard(
              title: "Trading Plans",
              description: "Create your strong trading plans and strategies",
              buttonText: "Start Analyzing",
              onButtonPressed: () {
                // Handle Analysis button press
                navigateToHomePage("Trading Plans");
              },
            ),
            20.hSpace,
          ],
        ),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Handle card tap if needed
        },
        child: Card(
          color: AppColors.black,
          child: Column(
            children: [
              20.vSpace,
              Text(
                title,
                style: AppStyles.text20PxMedium.white,
              ),
              20.vSpace,
              Text(
                description,
                style: AppStyles.text14Px.white,
                textAlign: TextAlign.center,
              ).px(8.0),
              20.vSpace,
              TextButton(
                onPressed: onButtonPressed,
                child: Text(buttonText),
              ),
              20.vSpace,
            ],
          ),
        ),
      ),
    );
  }
}
