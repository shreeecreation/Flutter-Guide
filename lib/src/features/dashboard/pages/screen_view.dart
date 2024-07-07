import 'package:flutterguide/src/core/core.dart';

import 'pages.dart';

class ScreensView extends StatelessWidget {
  final String menu;
  const ScreensView({Key? key, required this.menu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (menu) {
      case 'Introduction':
        page = const IntroductionPage();
        break;
      case 'Basic of Forex':
        page = const BasicOfForexPage();
        break;
      case 'Pips':
        page = const PipsPage();
        break;
      default:
        page = const Center(
          child: Text(
            "Other Page",
            style: TextStyle(
              color: Color(0xFF171719),
              fontSize: 22,
            ),
          ),
        );
    }
    return page;
  }
}
