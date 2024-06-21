import 'package:flutterguide/src/core/core.dart';

class HomePageHelpers {
  List<Widget> drawerItems = [
    ListTile(
      leading: const Icon(Icons.school),
      title: Text(
        "Learn",
        style: AppStyles.text18PxMedium,
      ),
      onTap: () {},
    ),
    ListTile(
      leading: const Icon(Icons.contact_phone),
      title: Text("Contact", style: AppStyles.text18PxMedium),
      onTap: () {},
    ),
    ListTile(
      leading: const Icon(Icons.analytics),
      title: Text("Analysis", style: AppStyles.text18PxMedium),
      onTap: () {},
    ),
  ];

  List<Widget> navItems = [
    TextButton(
      onPressed: () {},
      child: Text("Entry Models", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {},
      child: Text("CandleSticks", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {},
      child: Text("Contact", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {},
      child: Text("Analysis", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {},
      child: Text("Learn", style: AppStyles.text18PxMedium.white),
    ),
    100.horizontalSpace,
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
