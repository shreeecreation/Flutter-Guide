import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_html/flutter_html.dart';

import 'package:flutterguide/src/core/core.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TradingPlanPage extends StatelessWidget {
  const TradingPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(title: "Trading Plans"),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trading Plan",
                        style: AppStyles.text20PxBold,
                      ),
                      CustomButton(
                        label: "  Download PDF  ",
                        onPressed: () async {
                          await launchUrlString("assets/ForexAcademy.pdf");
                        },
                        isDisabled: false,
                      )
                    ],
                  ),
                  10.verticalSpace,
                  Html(
                    data: TradingPlanContent().plan,
                    style: {
                      "p": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "li": HtmlStyleHelper.htmlStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    },
                  ),
                  40.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TradingPlanContent {
  final String plan = '''
<p><strong>War begins here:</strong></p>
<ul>
  <li>See Daily Bias (Selling or Buying) - Do only one</li>
  <li>See at least 4 pairs (EUR/USD, XAU/USD, GBP/AUD, GBP/JPY)</li>
  <li>Consider trading sessions (Asian, Tokyo, NY)</li>
  <li>Wait for Entry Models to form, and ensure confirmation</li>
  <li>Set two Take Profits (TP). Once the first TP is touched, set Break Even (BE)</li>
  <li>Ensure at least 1:2 - 1:1.5 Risk-Reward Ratio (RRR)</li>
</ul>

<p><strong>What should I not do?</strong></p>
<ul>
  <li>Don't search for opportunities</li>
  <li>Don't trade on Monday</li>
  <li>Avoid randomly taking trades</li>
  <li>Don't move Stop Loss (SL)</li>
  <li>Avoid trading in public</li>
  <li>No show-off</li>
</ul>

<p><strong>How to get this done?</strong></p>
<ul>
  <li>Follow the trading plan</li>
  <li>Work on your mindset</li>
  <li>Stick to your plan</li>
</ul>
''';
}
