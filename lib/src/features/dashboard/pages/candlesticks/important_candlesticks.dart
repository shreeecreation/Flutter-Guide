import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class ImportantCandleSticks extends StatelessWidget {
  const ImportantCandleSticks({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Important Candlesticks",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - Important Candlesticks", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "A candlestick is a visual representation of a movement of  currency. Although there are other method of representation such as a graph, line, bar, candlesticks. The most famous and popular way of representation is candlesticks. Each candlestick provides a visual summary of a currency pair's price action, typically over a time frame such as one minute, five minutes, an hour, a day, etc.",
                    style: AppStyles.text18PxMedium,
                  ),
                  Html(
                    data: CandlestickContents().candlestickIntroduction,
                    style: {
                      "h2": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w600),
                      "p": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "li": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "ul": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w500),
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

class CandlestickContents {
  final String candlestickIntroduction = '''
<p><strong>Doji</strong></p>
<p>A Doji candlestick is a significant pattern in technical analysis used in forex trading. It indicates indecision in the market, where the opening and closing prices are nearly the same, resulting in a very small body. This pattern can signify potential reversals or continuation patterns, depending on its context within the broader market trends.</p>

<p><strong>Engulfing</strong></p>
<p>An engulfing candlestick pattern is a strong indicator used in technical analysis to signal potential market reversals. It consists of two candles: a smaller one followed by a larger one that completely engulfs the smaller candle's body. Engulfing patterns can be either bullish or bearish, depending on the direction of the trend and the colors of the candles involved.</p>

<p><strong>Morning Star and Evening Star</strong></p>

<p><strong>Morning Star</strong></p>
<p>The morning star pattern typically forms at the bottom of a downtrend and signals a potential reversal to the upside. It consists of three candles:</p>
<ul>
    <li>First Candle: A large bearish (red or black) candlestick that continues the existing downtrend.</li>
    <li>Second Candle: A small-bodied candlestick (can be bullish or bearish) that has a gap down from the first candle.</li>
    <li>Third Candle: A large bullish (green or white) candlestick that closes well into the body of the first candle. This bullish candle indicates a reversal of the downtrend and potential strength in buying pressure.</li>
</ul>

<p><strong>Evening Star</strong></p>
<p>Conversely, the evening star pattern forms at the top of an uptrend and signals a potential reversal to the downside. It also consists of three candles:</p>
<ul>
    <li>First Candle: A large bullish (green or white) candlestick that continues the existing uptrend.</li>
    <li>Second Candle: A small-bodied candlestick (can be bullish or bearish) that has a gap up from the first candle.</li>
    <li>Third Candle: A large bearish (red or black) candlestick that closes well into the body of the first candle. This bearish candle indicates a reversal of the uptrend and potential strength in selling pressure.</li>
</ul>

<p><strong>Hammer</strong></p>
<p>The Hammer is a significant single candlestick pattern that often signals a potential reversal in the direction of a price trend. It is named for its shape, resembling a hammer with a short body at the top and a long lower wick (shadow) below.</p>

<p><strong>No Wick (Marubozu)</strong></p>
<p>A "no wick" candlestick, also known as a <strong>"marubozu"</strong> in Japanese candlestick charting, is a candlestick with no shadows (wicks) on either end. It indicates a strong presence of either buyers or sellers throughout the trading session, depending on whether it's bullish or bearish. Most of the times it plays as a manipulation candlestick where it makes to enter many buyers or sellers after this candle is being formed. After the formation of the no wick candle, the market reverses sometimes.</p>

<p><strong>Note</strong></p>
<p><em><u>All these candlesticks are used to analyze the market technically, but these candlesticks are often used to trap retail traders. This is a crucial point that every retail trader should understand in their journey. The more sources of trading available online are mostly to trap retail traders. Every retailer needs to work on their mindset and go through their trap journey in order to become profitable. This does not mean these candles always play a manipulation segment; it depends on the market structure and timing.</u></em></p>
  ''';
}
