import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class LeveragePage extends StatelessWidget {
  const LeveragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - Leverage Page",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Leverage", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "Leverage is a crucial part in the trading where most trader are getting trapped at their initial stages.",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Text(
                    "To trade in the market either the trader holds the buy (long position) or sell (short position), according to the different broker the price for buying and the price for selling may differs.",
                    style: AppStyles.text18PxMedium,
                  ),
                  20.verticalSpace,
                  Html(
                    data: LeverageContents().leverageIntroduction,
                    style: {
                      "h2": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w600),
                      "p": Style(
                        fontSize: FontSize(19),
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.zillaSlab().fontFamily,
                      ),
                      "li": Style(
                        fontSize: FontSize(18),
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.zillaSlab().fontFamily,
                      ),
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

class LeverageContents {
  final String leverageIntroduction = '''
<p><strong>Leverage</strong> is a crucial part in the trading where most trader are getting trapped at their initial stages</p>
<p><strong>Leverage</strong> allows traders to trade with the higher capital position with a smaller amount of capital.</p>
<p>Essentially, it's a way to amplify potential returns (and losses) by using borrowed funds. Here's an overview of how leverage works:</p>
<p><strong>How Leverage works ? <strong></p>
<p>Leverage are expressed as ratio <strong>50:1, 100:1, 500:1, 1000:1</strong>. This ratio indicates how much larger the trading position can be compared to the actual investment.</p>
<p>For example:</p>
<ul>
    <li><strong>50:1 leverage</strong>: With \$50, you can control a position worth \$2,500.</li>
    <li><strong>100:1 leverage</strong>: With \$50, you can control a position worth \$5,000.</li>
    <li><strong>200:1 leverage</strong>: With \$50, you can control a position worth \$10,000.</li>
</ul>
<p><strong>#This is the power of leverage in trading</strong></p>
<p>Yo warriors, let’s see some impacts of leverage in trading which is most important</p>
<p><strong>Profits</strong></p>
<p><strong>Leverage</strong> can significantly increase potential profits. For example, if you are trading EUR/USD and the price moves in your favor by 1%, with <strong>100:1 leverage</strong>, your profit would be 100 times greater than without leverage.</p>
<p><strong>Loss<strong></p>
<p>Similarly, leverage also amplifies losses. If the market moves against your position by 1%, with 100:1 leverage, your loss would also be 100 times greater than without leverage. This means that a small adverse price movement can lead to significant losses, potentially exceeding your initial investment.</p>
<h3><strong>Risk Management</strong></h3>
<p>To manage the risks associated with leverage, traders often use strategies such as:</p>
<ul>
    <li><strong>Setting Stop-Loss Orders</strong>: Automatically close positions at predetermined levels to limit losses.</li>
    <li><strong>Using Lower Leverage Ratios</strong>: Reduce the potential for large losses.</li>
    <li><strong>Diversifying Trades</strong>: Spread capital across multiple positions to minimize risk.</li>
</ul>
<h3><strong>The problem</strong></h3>
<p>The problem came with the leverage in the trading is that the beginner trader uses high level of leverage to trade with the more possibilities of multiplying the profit without using the proper risk management. This problem occurs with the every beginner trader we also have faced this problem in our era.</p>
<p><span style="color: black; text-decoration: underline; font-style: italic;font-weight: w600;">We suggest you warriors that you should make sure you have proper risk management to use the high leverage.</span></p>
''';
}
