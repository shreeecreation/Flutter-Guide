import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterguide/src/core/core.dart';

class FlutterGuideAppBar extends StatelessWidget {
  const FlutterGuideAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Container(
          width: 1,
          height: 20,
          color: AppColors.black,
        ),
        TextButton(onPressed: () {}, child: Text("Open MT4  Account", style: AppStyles.text16PxMedium)),
        Container(
          width: 1,
          height: 20,
          color: AppColors.black,
        ),
        TextButton(onPressed: () {}, child: Text("Open Exness Account", style: AppStyles.text16PxMedium)),
        Container(
          width: 1,
          height: 20,
          color: AppColors.black,
        ),
        10.horizontalSpace,
      ],
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.format_list_bulleted_rounded,
            color: AppColors.primary,
          ),
          Container(
            width: 1,
            height: 20,
            color: AppColors.black,
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      // shadowColor: Color(0xFFbde0fe),
      backgroundColor: const Color(0xFFd9d9d9),
      centerTitle: false,
      pinned: true,
      // snap: true,
      floating: true,
      title: InkWell(
        hoverColor: AppColors.transparent,
        splashColor: AppColors.transparent,
        onTap: () {},
        child: Text(
          title,
          style: AppStyles.text18PxMedium.copyWith(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}
