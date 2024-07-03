import 'package:flutterguide/src/core/core.dart';

class BasicOfForexPage extends StatelessWidget {
  const BasicOfForexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [FlutterGuideAppBar(title: "Learn Forex > Basics of Forex")],
      ),
    );
  }
}
