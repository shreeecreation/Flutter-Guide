import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class WhatWhyEntryModels extends StatelessWidget {
  const WhatWhyEntryModels({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "What & Why Entry Models",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - What & Why Entry Models", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "In a battlefield, every warrior has a carefully crafted plan to attack the opponent. This plan depends on the strength of the enemy, the weather, the terrain, and overall strategy. Similarly, in trading, entry models are the strategic plans that traders follow to maintain discipline and consistency. These models guide when and how to enter a trade, ensuring that traders act based on reason rather than emotion.\n\nEvery trader have their own type of entry models according to their strategy and techniques. \n\nIn this chapter we will be talking about 3 Entry Models that is being by our traders.",
                    style: AppStyles.text18PxMedium,
                  ),
                  20.verticalSpace,
                  Text(
                    "EM1 (Entry Model 1)\n\nEM2 (Entry Model 2)\n\nEM3 (Entry Model 3)",
                    style: AppStyles.text18PxSemiBold,
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
