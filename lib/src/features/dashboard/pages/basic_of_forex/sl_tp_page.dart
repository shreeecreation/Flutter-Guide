import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class SlTpPage extends StatelessWidget {
  const SlTpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - Sl, TP, BE, TSL",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("SL, TP, BE, TSL", style: AppStyles.text24PxBold),
                  Html(
                    data: SlTpContents().slTpIntroduction,
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

class SlTpContents {
  final String slTpIntroduction = '''
<p>Yo warriors, the trading have multiple form of Risk management tools in this section we will be learning about the different tools like SL, TP, BE, TSL. Let’s define each as easy as possible with example mates</p>

<h2>Stop Loss</h2>

<p>A stop loss is a risk management tool in a trading market where the trader use to limit their potential losses. This losses can is being managed by setting a stop loss order to a desired trader point. By setting a stop-loss order, a trader specifies the price at which their position should be automatically closed if the market moves against them, preventing further losses beyond their predetermined threshold.</p>

<h3>Example:</h3>

<p>Suppose a trader buys EUR/USD at 1.2000, expecting the Euro to appreciate against the Dollar. However, to protect against potential losses, the trader sets a stop-loss order at 1.1950. If the EUR/USD pair drops to 1.1950, the stop-loss order will trigger, and the position will be closed automatically, limiting the loss to 50 pips.</p>

<p>Here's a detailed scenario:</p>

<ul>
    <li><strong>Entry Point:</strong> The trader buys 1 lot of EUR/USD at 1.2000.</li>
    <li><strong>Stop-Loss Level:</strong> The stop-loss is set at 1.1950.</li>
    <li><strong>Risk Management:</strong> The difference between the entry point and the stop-loss level is 50 pips. If the value of 1 pip is \$10 (standard lot), the maximum loss is \$500 (50 pips * \$10/pip).</li>
    <li><strong>Market Movement:</strong> If the market moves against the trader and the EUR/USD falls to 1.1950, the stop-loss order is triggered, and the trade is closed, resulting in a \$500 loss.</li>
    <li><strong>Outcome:</strong> The trader's loss is limited to \$500, protecting them from further potential losses if the market continues to decline.</li>
</ul>

<h2>Take Profit</h2>

<p>A take profit is similar to the stop loss but we vice versa the stop loss here. The Take profit order is being placed to limit the potential profit. We keep a take profit order somewhere in the chart and then the order will be closed once it touches or surpasses the take profit line. This helps traders lock in profits without having to monitor the market constantly.</p>

<h3>Example:</h3>

<p>Continuing from the previous example where the trader bought EUR/USD at 1.2000 and set a stop-loss at 1.1950, let's now include a take profit order.</p>

<ul>
    <li><strong>Entry Point:</strong> The trader buys 1 lot of EUR/USD at 1.2000.</li>
    <li><strong>Stop-Loss Level:</strong> The stop-loss is set at 1.1950 (50 pips below the entry price).</li>
    <li><strong>Take Profit Level:</strong> The take profit is set at 1.2100 (100 pips above the entry price).</li>
    <li><strong>Risk Management:</strong> The difference between the entry point and the take profit level is 100 pips. If the value of 1 pip is \$10 (standard lot), the potential profit is \$1,000 (100 pips * \$10/pip).</li>
    <li><strong>Market Movement:</strong> If the market moves in favor of the trader and the EUR/USD rises to 1.2100, the take profit order is triggered, and the trade is closed, resulting in a \$1,000 profit.</li>
    <li><strong>Outcome:</strong> The trader's profit is locked in at \$1,000, securing their gain without needing to monitor the trade continuously.</li>
</ul>

<p>This trade will be in 1:2 RRR (Risk Reward Ratio), the better the RRR the better the trader will be profitable.</p>

<h2>Break Even</h2>

<p>Break Even (BE) in forex trading refers to a strategy where a trader adjusts their stop-loss order to their entry price once the trade has moved in their favor sufficiently. This adjustment helps to eliminate the risk of losing money on the trade, hence the term "break even."</p>

<h3>Example:</h3>

<p>Let's revisit the previous example of buying EUR/USD at 1.2000 with a stop-loss at 1.1950 and a take profit at 1.2100. After the trade moves in the trader's favor, they decide to implement a break-even strategy.</p>

<ul>
    <li><strong>Entry Point:</strong> The trader buys 1 lot of EUR/USD at 1.2000.</li>
    <li><strong>Stop-Loss Level:</strong> Initially set at 1.1950 (50 pips below the entry price).</li>
    <li><strong>Take Profit Level:</strong> Set at 1.2100 (100 pips above the entry price).</li>
    <li><strong>Market Movement:</strong> The EUR/USD pair rises to 1.2050, which is 50 pips above the entry price.</li>
    <li><strong>Break Even Adjustment:</strong> The trader adjusts their stop-loss order to the entry price, 1.2000.</li>
    <li><strong>Outcome:</strong> If the market retraces and hits the adjusted stop-loss at 1.2000, the trade is closed without any profit or loss (hence, break even). However, if the market continues to move in favor and reaches the take profit level at 1.2100, the trader locks in a profit of \$1,000 (100 pips * \$10/pip).</li>
</ul>

<h2>TSL (Trailing Stop Loss)</h2>

<p>A Trailing Stop Loss is a type of stop-loss order set at a specified percentage or pip amount away from the current market price. Unlike a traditional stop-loss order that is static and does not move, a trailing stop loss adjusts automatically as the market price moves in favor of the trade.</p>

<h3>Purpose:</h3>

<p>The primary purpose of a trailing stop loss is to lock in profits while allowing the trade to remain open and continue to profit as long as the market moves in the trader's favor.</p>

<h3>Example of Trailing Stop Loss (TSL):</h3>

<p>Suppose a trader shorts GBP/USD at 1.4000, anticipating a decline in the exchange rate. To manage potential losses and protect profits as the trade moves in their favor, they use a Trailing Stop Loss strategy.</p>

<ul>
    <li><strong>Entry Point:</strong> The trader sells 1 lot of GBP/USD at 1.4000.</li>
    <li><strong>Initial Stop-Loss Level:</strong> Set initially at 1.4050, 50 pips above the entry price, to limit potential losses if the market moves against them.</li>
    <li><strong>Market Movement:</strong> If the GBP/USD exchange rate falls to 1.3950, the trader decides to implement a Trailing Stop Loss.</li>
    <li><strong>Trailing Stop Loss:</strong> The trader sets a trailing stop of 50 pips above the current market price. So, if the market price moves down to 1.3950, the trailing stop will adjust to 1.4000 (1.3950 + 50 pips).</li>
    <li><strong>Further Market Movement:</strong> If the GBP/USD continues to decline to 1.3900, the trailing stop would adjust to 1.3950, locking in a profit of 100 pips (1.4000 - 1.3900).</li>
</ul>

<h3>Outcome:</h3>

<ul>
    <li>If the market reverses and rises to 1.4000, the trailing stop would execute, closing the trade with a loss of 50 pips (\$500 loss if 1 pip is worth \$10 in this example).</li>
    <li>If the market continues to decline and hits the trailing stop at 1.3950, the trade closes automatically with a profit of 50 pips (\$500 profit).</li>
</ul>

<p>Trailing Stop Loss orders are valuable tools for traders because they allow them to protect their profits by adjusting the stop-loss level automatically as the market moves in their favor, thereby reducing the risk of giving back gains if the market reverses.</p>

''';
}
