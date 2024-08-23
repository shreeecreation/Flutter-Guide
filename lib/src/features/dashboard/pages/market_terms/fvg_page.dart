import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class FvgPage extends StatelessWidget {
  const FvgPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "FVG (Fair Value Gap)",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - Fair Value Gap", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "Fvg stands for Fair Value Gap which it self defines it is a gap that is need to be filled out by the market somehow. Fair Value Gaps (FVGs), also known as price gaps or liquidity voids, are important concepts in technical analysis and trading, particularly in the context of forex, stocks, and other financial markets. These gaps represent areas on a price chart where little or no trading activity has occurred. Understanding FVGs can help traders identify potential opportunities and risks in the market.",
                    style: AppStyles.text18PxMedium,
                  ),
                  Html(
                    data: FVGContents().candlestickIntroduction,
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
                          imageUrl: Assets.images.fvg.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Fair Value Gap are being filled up later on by the sellers or buyers later on.",
                        style: AppStyles.text18PxMedium,
                      ),
                    ],
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

class FVGContents {
  final String candlestickIntroduction = '''

 ''';
}
