import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class FibonacciPage extends StatelessWidget {
  const FibonacciPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Fibonacci Indicator",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - Fibonacci", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "The Fibonacci indicator is a popular technical analysis tool used in the forex market to identify potential support and resistance levels. This tool is based on the Fibonacci sequence, where each number is the sum of the two preceding ones. The key Fibonacci ratios derived from this sequence are 23.6%, 38.2%, 50%, 61.8%, and 100%. Traders use these ratios to predict potential price movements and identify strategic entry and exit points in their trades.",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.fibonacci.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    "Here in this image we can see that we are using the Fibonacci tool. This tool is mostly used to find the support and resistance level, first we need to mark the higher and lower point in desired timeframe to see the retracement levels. Here in this image we have we have resistance level in 0.7 and in 0.5 the market is working as a support level for the multiple time.",
                    style: AppStyles.text18PxMedium,
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

class FibonacciContents {
  final String candlestickIntroduction = '''

 ''';
}
