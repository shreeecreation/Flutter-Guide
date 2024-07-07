import 'package:flutterguide/src/core/core.dart';

class PipsPage extends StatelessWidget {
  const PipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          FlutterGuideAppBar(
            title: "Learn Forex - Pips ",
          )
        ],
      ),
    );
  }
}
