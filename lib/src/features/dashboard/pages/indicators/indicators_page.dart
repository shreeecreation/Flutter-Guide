import 'package:flutterguide/src/core/core.dart';

class IndicatorsPage extends StatelessWidget {
  const IndicatorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - Indicators",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  30.verticalSpace,
                  Text("Indicators", style: AppStyles.text24PxBold),
                  20.verticalSpace,
                  Text(
                    "In this war map we are going to learn about indicators, Indicators are tools you can apply to a market’s chart that use mathematical calculations and formulas to give you extra insight into its price movements. Instead of relying on the patterns formed by an asset’s live price, they offer an additional dimension to assist in making trading decisions. This helps you to analyze the market.\n\nIndicators falls under the technical analysis, this helps to analyze the market but not 100% efficient. Indicators such as RSI, Volume Profile, Fibonacci, EMA, Volume, Session, Sunday Open are used to predict the market movement. ",
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
                          "•  RSI ",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Volume",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Fibonacci",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  SESSION",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Sunday Open",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Volume Profile",
                          style: AppStyles.text18PxSemiBold,
                        ),
                      ],
                    ),
                  ),
                  30.verticalSpace,
                  Text(
                    "We use this type of indicators mostly to predict the market, but still our chart should not contain more than 2 indicators at once because more indicators shows more probabilities which is not good for taking entries. \n\nThe more simpler you make the trading the more consistent and profitable you will be made.",
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
