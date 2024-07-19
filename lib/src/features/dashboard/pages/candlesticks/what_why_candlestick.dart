import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class WhatWhyCandlestick extends StatelessWidget {
  const WhatWhyCandlestick({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "What & Why Candlesticks",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - What & Why Candlesticks", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "A candlestick is a visual representation of a movement of  currency. Although there are other method of representation such as a graph, line, bar, candlesticks. The most famous and popular way of representation is candlesticks. Each candlestick provides a visual summary of a currency pair's price action, typically over a time frame such as one minute, five minutes, an hour, a day, etc.",
                    style: AppStyles.text18PxMedium,
                  ),
                  Html(
                    data: WhatWhyCandlestickContents().whatwhyCandlestickIntroduction,
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

class WhatWhyCandlestickContents {
  final String whatwhyCandlestickIntroduction = '''
<p><strong>Components of candles</strong></p>
<p></p>
<p><strong>Body</strong>: The wider part of the candlestick, which represents the range between the opening and closing prices.</p>
<ul>
    <li><strong>Bullish Candlestick</strong>: If the closing price is higher than the opening price, the candlestick is usually green or white, indicating an upward movement.</li>
    <li><strong>Bearish Candlestick</strong>: If the closing price is lower than the opening price, the candlestick is usually red or black, indicating a downward movement.</li>
</ul>
<p><strong>Wicks (or Shadows)</strong>: The thin lines extending above and below the body. They represent the highest and lowest prices during the time period.</p>
<ul>
    <li><strong>Upper Wick</strong>: The line above the body, indicating the highest price.</li>
    <li><strong>Lower Wick</strong>: The line below the body, indicating the lowest price.</li>
</ul>
<p>Here will be the image of each body and wick</p>
<img src="https://www.strike.money/wp-content/uploads/2024/01/Bullish-Harami-Candlestick-Pattern-1024x629.jpg" alt="Candlestick Image" width="100%" height="auto">
<h3><strong>Why Candlesticks Are Needed in Forex Trading</strong></h3>
<ol>
    <li><strong>Visual Representation</strong>: Candlesticks provide a clear and concise visual representation of price movements, making it easier for traders to understand and analyze market behavior at a glance.</li>
    <li><strong>Pattern Recognition</strong>: Candlestick patterns can indicate potential market reversals, continuations, and other price movements. Common patterns include Doji, Hammer, Engulfing, and more. Recognizing these patterns helps traders make informed decisions.</li>
    <li><strong>Market Sentiment</strong>: Candlesticks reflect market sentiment by showing whether buyers or sellers were dominant during a specific time period. This helps traders gauge the strength of market trends and potential turning points.</li>
    <li><strong>Historical Data</strong>: By examining past candlestick patterns, traders can identify historical price levels that acted as support or resistance. This historical analysis can help predict future price movements.</li>
    <li><strong>Versatility</strong>: Candlesticks can be used across different time frames, from minutes to months, making them versatile tools for both short-term and long-term traders.</li>
</ol>
''';
}
