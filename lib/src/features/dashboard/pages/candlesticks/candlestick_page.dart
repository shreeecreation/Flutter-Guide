import 'package:flutterguide/src/core/core.dart';

class CandlesticksPage extends StatelessWidget {
  const CandlesticksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - Candlesticks",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  30.verticalSpace,
                  Text("Candlesticks", style: AppStyles.text24PxBold),
                  20.verticalSpace,
                  Text(
                    "In this section of study we will deep dive into the section of candlesticks what is it and why it is with examples.",
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
                          "•  What is Candlesticks",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Components of candlesticks",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  Why is candlesticks are used",
                          style: AppStyles.text18PxSemiBold,
                        ),
                        5.verticalSpace,
                        Text(
                          "•  5 important types of candlesticks",
                          style: AppStyles.text18PxSemiBold,
                        ),
                      ],
                    ),
                  ),
                  30.verticalSpace,
                  Text(
                    "We will walk through this topics and get a clear understanding about the candlesticks.",
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
