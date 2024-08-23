import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class SslBslPage extends StatelessWidget {
  const SslBslPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "SSL BSL ",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("SSL BSL ( Sell Side Liquidity, Buy Side Liquidity )", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Html(
                    data: SslBslContents().candlestickIntroduction,
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
                          imageUrl: Assets.images.ssl.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  Text(
                      "Here there is a sell side liquidity in the gold chart, it means lot of sellers may have entered, after the newyork session starts the sellside liquidity have been taken out by the market movers. Our entry will be placed on the NY killzone point. ",
                      style: AppStyles.text18PxMedium),
                  30.verticalSpace,
                  Text(
                    "Now let’s see example of BSL here",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.bsl.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  Text(
                    "Here in this image we can clearly see the buy side and sell side liquidity in the market where the market is being consolidating for a long period of time where it is gathering a lot of buyers and sellers in both side. Here the market movers have swept all the sellers by pushing up the market.",
                    style: AppStyles.text18PxMedium,
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

class SslBslContents {
  final String candlestickIntroduction = '''
<p>SSL stands for <strong>Sell Side Liquidity</strong> BSL stands for <strong>Buy Side Liquidity</strong>.  This is the way in forex market to know where the liquidity is in high range. Liquidity simple means where the highest stop loss are found or placed in the market. 
<br>
The market always ran towards the stop loss area to remove the retail traders so it will be easy to move the market to the players. 
</p>
<p>

<strong>SSL </strong>
<br>

Sell Side Liquidity refers to areas in the market where there are a significant number of pending sell orders. These areas are typically above current price levels and are often targeted during uptrends as price moves higher to fill these sell orders.
<br>
<br>

<strong>BSL</strong>
<br>
Buy Side Liquidity refers to areas in the market where there are a significant number of pending buy orders. These areas are typically below current price levels and are often targeted during downtrends as price moves lower to fill these buy orders.
</p>

<p>

<strong>Importance of SSL and BSL</strong>
<br>
<br>
<strong>1. Market Movement:</strong> Understanding SSL and BSL helps traders anticipate where the price might move to capture liquidity. <br>
Markets often move towards these liquidity areas to fill large orders and execute trades.<br>
<strong>2. Price Manipulation:</strong> Large players in the market, such as institutional traders, often drive prices towards these liquidity areas to trigger stop orders and gather liquidity for their own trades.<br>
<strong>3. Trend Identification:</strong> SSL and BSL levels can help identify potential trend reversals or continuations. For example, if the price consistently targets and breaks through SSL areas, it may indicate a strong uptrend.<br>
<strong>4. Risk Management:</strong> Knowing where SSL and BSL levels are located allows traders to place stop-loss orders and take-profit targets more effectively, managing their risk better.<br>

<br>
Now let’s see example of SSL here 

 ''';
}
