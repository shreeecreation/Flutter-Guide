import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class AskBidPage extends StatelessWidget {
  const AskBidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - Ask Bid (Spread) ",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Ask Bid (Spread)", style: AppStyles.text24PxBold),
                  20.verticalSpace,
                  Text(
                    "Ask and Bid refers to the actual prices that the participants are willing to buy and sell in the market into a desire currency pair.",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Text(
                    "To trade in the market either the trader holds the buy (long position) or sell (short position), according to the different broker the price for buying and the price for selling may differs.",
                    style: AppStyles.text18PxMedium,
                  ),
                  20.verticalSpace,
                  Html(data: AskBidContents().htmlContent, style: {
                    "h2": Style(
                      fontSize: FontSize(20),
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.zillaSlab().fontFamily,
                    ),
                    "p": Style(
                      fontSize: FontSize(18),
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.zillaSlab().fontFamily,
                    ),
                    "li": Style(
                      fontSize: FontSize(18),
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.zillaSlab().fontFamily,
                    ),
                  }),
                  10.verticalSpace,
                  Text(
                    "Clear Example of Ask and Bid price in the market:",
                    style: AppStyles.text18PxSemiBold,
                  ),
                  10.verticalSpace,
                  AppCacheImageViewer(
                    imageUrl: Assets.images.pips.askbid.path,
                    imageTypeEnum: ImageTypeEnum.assets,
                  ),
                  10.verticalSpace,
                  Text(
                    "This is the clear picture of the Ask and Bid price in the market. The Ask price is always higher than the Bid price. The difference between the Ask and Bid price is called the spread. The spread is the cost of trading in the market.",
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

class AskBidContents {
  final String htmlContent = """
     <h2>Bid and Ask Prices</h2>
    <p><strong>Bid Price:</strong> This is the price at which traders are willing to buy a currency pair. It's the highest price a buyer is willing to pay for the currency at that moment.</p>
    <p><strong>Ask Price:</strong> This is the price at which traders are willing to sell a currency pair. It's the lowest price a seller is willing to accept for the currency at that moment.</p>
    <p>The difference between the bid and ask prices is called the <strong>"spread."</strong> The bid price is always lower than the ask price i.e. the buying price is always higher than the selling price, reflecting the costs and profit margins of the market makers or brokers facilitating the trade.</p>
    <p>For example, if the current quote for EUR/USD is 1.2000/1.2011:</p>
    <ul>
      <li>1.2000 is the bid price (the price a buyer is willing to pay for the euro).</li>
      <li>1.2011 is the ask price (the price a seller is willing to accept for the euro).</li>
    </ul>
    <p>The higher the spread is disadvantageous for the trader due to the high difference between the ask and bid price. Most of the platforms provide about 10 - 20 pips spread according to the lot size.</p>
    <p>The spread may change according to the session in the broker platform that we are using for trading.</p>
    
    <h2>Example 2: GBP/USD</h2>
    <p><strong>Bid Price:</strong> 1.3055</p>
    <p><strong>Ask Price:</strong> 1.3065</p>
    <p><strong>Spread:</strong> 0.0010 (10 pips)</p>
    <p>Here, you can buy GBP/USD at 1.3055 and sell it at 1.3065, with a spread of 10 pips.</p>
    <p>The spread can vary depending on market conditions, the liquidity of the currency pair, and the broker. Higher liquidity pairs like EUR/USD tend to have tighter spreads, while less liquid pairs may have wider spreads.</p>
    <p>Understanding bid and ask prices, along with the spread, is crucial for forex traders, as these directly impact trading costs and potential profitability.</p>
  """;
}
