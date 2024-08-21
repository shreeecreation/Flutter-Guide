import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class BosChochPage extends StatelessWidget {
  const BosChochPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "BoS ChoCh",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - Break of Structure and Change of Character", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Html(
                    data: BosChochContents().candlestickIntroduction,
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
                          imageUrl: Assets.images.bos.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    "Here, we have shown the example of BoS that occur in the market where the previous higher are being broken by the market.\n\nNow, let’s see the example of ChoCh in the market ",
                    style: AppStyles.text18PxMedium,
                  ),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.choch.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    "Here in the figure we can see that the Bearish BoS was being formed but in the third section we can see that the market have created ChoCh and after retracing in the ChoCh level twice the market trend was being changed. ",
                    style: AppStyles.text18Px.copyWith(),
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

class BosChochContents {
  final String candlestickIntroduction = '''
<p>BoS stands for <strong>Break of Structure</strong> and ChoCh stands for <strong>Change of Character</strong> this is the way to see analyze the market movement. They are the way to confirm the trend in the market. 

BoS (Break of Structure) refers to a price action event where the market breaks through a previously established support or resistance level, indicating a potential change in market direction or a continuation of the current trend.

ChoCh (Change of Character) refers to a shift in market behavior that indicates a potential trend reversal or the end of the current trend. This occurs when the market fails to create new highs in an uptrend or new lows in a downtrend and starts to move in the opposite direction.

Now, let’s see the simple example of BoS to have a visual representation</p>
 ''';
}
