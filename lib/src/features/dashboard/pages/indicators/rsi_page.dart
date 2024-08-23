import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class RSIPage extends StatelessWidget {
  const RSIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "RSI (Relative Strength Index)",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - RSI", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "The relative strength index (RSI) is most commonly used to indicate temporarily overbought or oversold conditions in a market. An intraday forex trading strategy can be devised to take advantage of indications from the RSI that a market is overextended and therefore likely to retrace.",
                    style: AppStyles.text18PxMedium,
                  ),
                  Html(
                    data: RSIContents().candlestickIntroduction,
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
                          imageUrl: Assets.images.rsi.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    "Here we have selected the RSI indicators from the indicators section. Now we can see the section of overbought and oversold where the market are being highly green and red they are section where the market are being over sold and bought. \nWe can have our plan and entries in this section by waiting for the confirmation.",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Text("Conclusion", style: AppStyles.text18PxSemiBold),
                  5.verticalSpace,
                  Text(
                    "RSI can help the market reversal during the day trading by the help of overbought and oversold section. However sometimes this indicators are used as the manipulation tool by the operator to trap the retail traders.",
                    style: AppStyles.text18PxMedium,
                  ),
                  30.verticalSpace
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RSIContents {
  final String candlestickIntroduction = '''
<p><strong>Key Takeaways</strong>

1. The key RSI levels to monitor in trading are 70 and 30.
2. An RSI above 70 indicates an overbought condition, while an RSI below 30 indicates an oversold condition.
3. RSI indicators are often the initial consideration for traders when evaluating potential trades, with many setting alerts at the 70 and 30 levels.
4. Once an alert is triggered, traders will assess the trade's validity.
5. The RSI can produce false signals, and in volatile markets, it is common for the RSI to stay above 70 or below 30 for prolonged periods.
</p>
 ''';
}
