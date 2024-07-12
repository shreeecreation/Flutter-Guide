import 'package:flutterguide/src/core/core.dart';

class PipsPage extends StatelessWidget {
  const PipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          FlutterGuideAppBar(
            title: "Learn Forex - Pips ",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Pips", style: AppStyles.text24PxBold),
                  20.verticalSpace,
                  Text(
                    "Pip stands for Percentage in point or price interest point. It is the smallest price move that a given exchange rate based on market convention. Most currency pairs are quoted to four decimal places and a pip is the smallest change in the fourth decimal place.",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Text(
                    "For example, if the EUR/USD is roaming around 1.0904 and it moves to 1.0905, that 0.0001 rise in value represents in one pip. ",
                    style: AppStyles.text18PxSemiBold,
                  ),
                  20.verticalSpace,
                  AppCacheImageViewer(
                    imageUrl: Assets.images.pips.pips.path,
                    imageTypeEnum: ImageTypeEnum.assets,
                  ),
                  10.verticalSpace,
                  Text(
                    "Pips are a fundamental concept in forex trading, serving as the basic unit of measurement for price changes. They are crucial for calculating profits and losses, managing risk, understanding transaction costs, and making informed trading decisions. By mastering the concept of pips, traders can better navigate the complexities of the forex market and improve their overall trading performance.",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Text(
                    "Pips can be different from according to the currency pair. For example, in the case of JPY pairs, the pip is the second decimal place. The pips are the smallest point that are changing in the currency pair. The most volatile currency pair is XAU/USD which is also known as the gold, this pair pips are changing rapidly due to its highest volume",
                    style: AppStyles.text18PxMedium,
                  ),
                  30.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
