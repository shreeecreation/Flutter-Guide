import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class LiquidityPage extends StatelessWidget {
  const LiquidityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Liquidity ",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Liquidity", style: AppStyles.text24PxBold),
                  Html(
                    data: LiquidityContents().candlestickIntroduction,
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
                          imageUrl: Assets.images.liquidity.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  Text(
                    "So as shown in this image the circled point is the place where the most of the sellers may have entered which is also known as sell side liquidity has entered into the market. It can be obtained on the both buy side or sell side, we will further discuss about liquidity in next chapter.",
                    style: AppStyles.text18PxMedium,
                  ),
                  30.verticalSpace,
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

class LiquidityContents {
  final String candlestickIntroduction = '''
<p>Liquidity in forex trading refers to the ability to buy or sell currency pairs quickly and in large quantities without significantly affecting the exchange rate. It is a critical factor that impacts trading efficiency, transaction costs, and overall market stability. 
Liquidity simply refers to the active orders or pending orders in the market.
Liquidity extends beyond just the ease of buying and selling assets. It plays a vital role in financial stability, economic policy, market behavior, corporate finance, investor strategy, and the broader economy. 
</p>
<p>
In highly liquid markets, the difference between the bid (buy) and ask (sell) prices tends to be smaller. This narrow spread reduces the cost of executing trades.
</p>

<p>
Liquidity in simple terms simply means active buyers and sellers in the market who have some position in the market.
</p>
 ''';
}
