import 'package:flutterguide/src/core/core.dart';

class HallOfFameWidget extends StatelessWidget {
  const HallOfFameWidget({
    super.key,
    required this.name,
    required this.imageUrl,
  });
  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          width: 120,
          child: ClipOval(
            child: AppCacheImageViewer(
              fit: BoxFit.cover,
              imageUrl: imageUrl,
              imageTypeEnum: ImageTypeEnum.assets,
            ),
          ),
        ),
        12.verticalSpace,
        Text(
          name,
          style: AppStyles.text16PxMedium,
        )
      ],
    );
  }
}
