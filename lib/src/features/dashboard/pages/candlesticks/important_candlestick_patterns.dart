import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class ImportantCandlestickPatterns extends StatelessWidget {
  const ImportantCandlestickPatterns({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Important Candlesticks Patterns",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - Important Candlesticks Patterns", style: AppStyles.text24PxBold),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.7,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.candlestickPatterns.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  Html(
                    data: ImportantCandlestickPatternsContent().importantCandlestickPatterns,
                    style: {
                      "p": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    },
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

class ImportantCandlestickPatternsContent {
  final String importantCandlestickPatterns = '''
<p>These candlesticks are mostly played with the <strong>manipulation</strong> of the market. These candlesticks are found openly on the internet where most <strong>beginners/retail traders</strong> started with. 
In the starting phase, they started learning basic chart patterns from the internet, and the market mover did the exact opposite based on market psychology. </p>
<p>So, the retail trader should be able to handle their decision and needs to have the ability to change their decision with market psychology.</p>

<p>However, to sustain themselves in the market, we just need to have <strong>3 - 4 EM (Entry Models)</strong> to become consistently profitable traders in the market. This is just a simple overview of the chart patterns we will have detailed Entry Models defined in the upcoming war map. </p>
''';
}
