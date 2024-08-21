import 'package:flutterguide/src/core/core.dart';

class CandlestickPatternsPage extends StatelessWidget {
  const CandlestickPatternsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - Candlesticks Patterns",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  30.verticalSpace,
                  Text("Candlesticks Patterns", style: AppStyles.text24PxBold),
                  20.verticalSpace,
                  Text(
                    "In this section of study we will deep dive into the section of candlesticks patterns what is it and why it is with examples.",
                    style: AppStyles.text16Px,
                    textAlign: TextAlign.center,
                  ),
                  30.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "•  What are candlestick patterns ?",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "• What candlestick patterns shows",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Important candlesticks patterns",
                          style: AppStyles.text18PxSemiBold,
                        ),
                      ],
                    ),
                  ),
                  30.verticalSpace,
                  Text(
                    "We will walk through this topics and get a clear understanding about the candlesticks patterns in this chapter.",
                    style: AppStyles.text16Px,
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
