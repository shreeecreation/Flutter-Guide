import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class CandlestickPatternsWhatWhy extends StatelessWidget {
  const CandlestickPatternsWhatWhy({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "What & Why Candlesticks Patterns",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - What & Why Candlesticks Patterns", style: AppStyles.text24PxBold),
                  Html(
                    data: WhatWhyCandlestickPatternsContents().whatwhyCandlestickPatterns,
                    style: {
                      "p": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
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

class WhatWhyCandlestickPatternsContents {
  final String whatwhyCandlestickPatterns = '''
<p><strong>Candlestick patterns</strong> are formations created by one or more candlesticks on a candlestick chart, used in <strong>technical analysis</strong> to predict future price movements based on historical patterns. These patterns help traders identify potential <strong>reversals, continuations,</strong> and <strong>indecision</strong> in the market. Candlestick patterns are classified into different types based on the number of candlesticks involved and the information they provide.

<br>
<br>
Candlesticks on a chart aim to provide a visual representation of price movements over a specific period, showing the market's sentiment and the battle between <strong>buyers</strong> (bulls) and <strong>sellers</strong> (bears). 
However there are multiple form to see the market movement such as graph, bar, lines, area candles etc. but the best way and beginner friendly is the candlestick patterns.

<br>
<br>
Being a trader we need to analyze the market in different timeframe such as 1 minute, 5 minutes, 15 minutes, 1 hour, 4 hours, daily, weekly, monthly etc. and the candlestick patterns are the best way to analyze the market in different timeframe. 

<br>
<br>
As, we can see different timeframes have different patterns we can analyze the market by seeing the HH(Higher High), HL(Higher Low), LH(Lower High), LL(Lower Low) and the candlestick patterns.

<br>  
<br>  
We can see the weather the market is in uptrend, downtrend or sideways by seeing the candlestick patterns.

<br> <br>
<strong> Example</strong>
<p><em><u>If you see a "Hammer" candlestick at the bottom of a downtrend, it might suggest that buyers are stepping in and the market could reverse to the upside. Conversely, a "Shooting Star" at the top of an uptrend might indicate that the market is losing momentum and could reverse downward.

Candlestick patterns are widely used by traders to make decisions about buying, selling, or holding assets based on historical price data. However, they should be used in conjunction with other forms of analysis to make informed trading decisions.</u></em></p>


</p>
''';
}
