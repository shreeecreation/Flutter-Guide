import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterguide/src/core/core.dart';

class BasicOfForexPage extends StatelessWidget {
  const BasicOfForexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - Basics of Forex",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  30.verticalSpace,
                  Text("Basic of Forex", style: AppStyles.text24PxBold),
                  20.verticalSpace,
                  Text(
                    "By the end of this section, you will have a solid understanding of these fundamental concepts, enabling you to make more informed decisions in your trading journey.",
                    style: AppStyles.text16Px,
                    textAlign: TextAlign.center,
                  ),
                  30.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "•  Introduction to Pips",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Ask Bid Manipulation",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Leverage Mindset",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Spread and Lot Size",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Margin (Margin Call)",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Brokerage and Platform",
                          style: AppStyles.text18PxSemiBold,
                        ),
                      ],
                    ),
                  ),
                  30.verticalSpace,
                  Text(
                    "We will walk through this topics and get a clear understanding about basic forex market.",
                    style: AppStyles.text16Px,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
