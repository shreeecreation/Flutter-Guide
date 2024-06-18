import 'package:flutter/material.dart';
import 'package:flutterguide/src/core/extensions/extensions.dart';
import 'package:flutterguide/src/core/themes/app_styles.dart';
import 'package:flutterguide/src/core/widgets/custom_button.dart';
import 'package:flutterguide/src/core/widgets/scaffold_wrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> navItems = [
    TextButton(onPressed: () {}, child: const Text("Learn")),
    TextButton(onPressed: () {}, child: const Text("Contact")),
    TextButton(onPressed: () {}, child: const Text("Analysis")),
    TextButton(onPressed: () {}, child: const Text("Dark Mode")),
  ];
  @override
  Widget build(BuildContext context) {
    final mobile = context.width < 600;
    return ScaffoldWrapper(
      drawer: mobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Forex Academy',
              style: AppStyles.text20PxMedium,
            ),
            actions: !mobile ? navItems : null,
          ),
          const SliverToBoxAdapter(
            child: Text("Forex Academy"),
          )
        ],
      ),
    );
  }
}
