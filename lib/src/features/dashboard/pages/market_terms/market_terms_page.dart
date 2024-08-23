import 'package:flutterguide/src/core/core.dart';

class MarketTermsPage extends StatelessWidget {
  const MarketTermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - Market Terms",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  30.verticalSpace,
                  Text("Market Terms", style: AppStyles.text24PxBold),
                  20.verticalSpace,
                  Text(
                    "In this war map we will be seeing some of the key market terms used in the forex market. It is very necessary to need to know the various market terms in other to become consistent on the market.\n\n We will going to see different type of market terms with their example :- ",
                    style: AppStyles.text20Px,
                    textAlign: TextAlign.center,
                  ),
                  30.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "•  Support & Resistance ",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  FVG",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  BOS",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Choch",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  SSL",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  BSL",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Trends",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  MSS",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Fibonacci",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Indicators",
                          style: AppStyles.text18PxSemiBold,
                        ),
                      ],
                    ),
                  ),
                  30.verticalSpace,
                  Text(
                    "We will walk through this topics and get a clear understanding about Market Terms that are commonly used and traded.",
                    style: AppStyles.text20Px,
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
