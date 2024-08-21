import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class SupportResistancePage extends StatelessWidget {
  const SupportResistancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Support & Resistance",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - Support & Resistance", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "Support and resistance levels are horizontal price levels that typically connect price bar highs to other price bar highs or lows to lows, forming horizontal levels on a price chart.\n\nA support or resistance level is formed when a market’s price reverses and changes direction, leaving behind a peak or trough (swing point) in the market. Support and resistance levels can carve out trading ranges like we see in the chart below and they also can be seen in trending markets as a market retraces and leaves behind swing points.",
                    style: AppStyles.text18PxMedium,
                  ),
                  Html(
                    data: SupportResistenceContents().candlestickIntroduction,
                    style: {
                      "h2": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w600),
                      "p": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "li": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "ul": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    },
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.supportResistance.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.supportResistance2.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    "Support and resistance are played as the key level in the forex chart where sometimes it plays as a manipulation key level also this can vary with the market movement.",
                    style: AppStyles.text18PxSemiBold.copyWith(
                      decoration: TextDecoration.underline,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
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

class SupportResistenceContents {
  final String candlestickIntroduction = '''

 ''';
}
