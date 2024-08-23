import 'package:flutterguide/src/core/core.dart';

class NextWidget extends StatelessWidget {
  const NextWidget({
    super.key,
    required this.onNextCallBack,
  });
  final void Function() onNextCallBack;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: "  Next War  ",
      isDisabled: false,
      onPressed: () {
        onNextCallBack();
      },
    );
  }
}
