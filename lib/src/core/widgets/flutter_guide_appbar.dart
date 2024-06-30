import 'package:flutterguide/src/core/core.dart';

class FlutterGuideAppbar extends StatelessWidget {
  const FlutterGuideAppbar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        title,
        style: AppStyles.text30PxSemiBold,
      ),
    );
  }
}
