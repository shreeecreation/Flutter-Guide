import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class VolumePage extends StatelessWidget {
  const VolumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Volume Indicator",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - Volume", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "Volume is a crucial element in forex trading, providing insights into the strength and potential direction of price movements. Unlike stock or commodity markets, where volume data is readily available, the decentralized nature of the forex market makes it challenging to obtain accurate volume data.",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.volume.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    "This is a chart of gold with a 15 min TF where we have added a volume indicator and we can see the green and red line which denotes the red as a seller and green as a buyer. Here we can see the total participation in the market and who is dominating the market. This is almost a sideway market means it is consolidating, if the market is in a trend we can distinguish the dominating participation in the market.",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Text("Conclusion", style: AppStyles.text18PxSemiBold),
                  5.verticalSpace,
                  Text(
                    "Volume is a vital component in forex trading, offering insights into market strength, sentiment, and potential future movements. Although obtaining accurate volume data in the forex market is challenging, traders use proxies like tick volume, order flow data, and broker-provided volume to inform their decisions. By incorporating volume analysis into their strategies, traders can enhance their ability to confirm trends, identify reversals, and make more informed trading decisions.",
                    style: AppStyles.text18PxMedium,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VolumeContents {
  final String candlestickIntroduction = '''

 ''';
}
