import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterguide/src/core/core.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      backgroundColor: AppColors.greyColor,
      body: CustomScrollView(slivers: [
        const FlutterGuideAppBar(title: "Learn Forex > Basics of Forex"),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const FlutterGuideAppbar(title: "Introduction"),
                20.verticalSpace,
                Text(
                  "Starting the war",
                  style: AppStyles.text20PxSemiBold,
                ),
                10.verticalSpace,
                Text(
                  "The forex market, or foreign exchange market, is a decentralized global marketplace where currencies are traded. The daily turnover of this market is about 6 trillion dollar which is even more than Australia GDP. It's the largest financial market in the world, operating 24 hours a day, five days a week. Participants include banks, financial institutions, corporations, governments, and individual traders. ",
                  style: AppStyles.text18PxMedium,
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 400,
                      child: AppCacheImageViewer(
                        imageUrl: Assets.images.forex.path,
                        imageTypeEnum: ImageTypeEnum.assets,
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Text("How forex market was started ?", style: AppStyles.text20PxSemiBold),
                10.verticalSpace,
                Text(
                    "The forex market was established as a result of the need for a system to facilitate international trade and currency exchange. The modern forex market operates as a network of financial institutions, brokers, and traders globally, without a centralized exchange.",
                    style: AppStyles.text18PxMedium),
                20.verticalSpace,
                Text("Who controls the forex market ?", style: AppStyles.text20PxSemiBold),
                10.verticalSpace,
                Text(
                  'The forex market is decentralized and not controlled by a single entity. However, various key players influence the market : ',
                  style: AppStyles.text18PxMedium,
                ),
                5.verticalSpace,
                Text(
                  "1. Central Banks  Influence currency values through monetary policy, interest rates, and interventions (e.g., Federal Reserve, European Central Bank).",
                  style: AppStyles.text18PxMedium,
                ),
                5.verticalSpace,
                Text(
                  "2. Commercial Banks  Facilitate forex transactions for clients and engage in proprietary trading.",
                  style: AppStyles.text18PxMedium,
                ),
                5.verticalSpace,
                Text(
                  "3. Hedge Funds  Speculate on currency movements to generate profits for investors.",
                  style: AppStyles.text18PxMedium,
                ),
                5.verticalSpace,
                Text(
                  "4. Retail Traders  Individual traders who participate in the forex market through online platforms.",
                  style: AppStyles.text18PxMedium,
                ),
                20.verticalSpace,
                Text(
                    "While no single entity controls the market, central banks have significant influence through policy decisions and interventions.",
                    style: AppStyles.text18PxMedium),
                20.verticalSpace,
                Text("Will Forex Market ever come to an end ? ", style: AppStyles.text20PxSemiBold),
                10.verticalSpace,
                Text(
                  "The forex market will live until the international currencies are left. Foreign currencies are used for different works such as, investment, trade. But however in changing era of technology can lead to change the way of regulating the foreign exchange. Factors like digital currencies and shifts in economic power could influence its structure, but the fundamental need for currency exchange will persist.",
                  style: AppStyles.text18PxMedium,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
