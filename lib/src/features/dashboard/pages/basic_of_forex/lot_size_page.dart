import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class LotSizePage extends StatelessWidget {
  const LotSizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - LotSize",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("LotSize", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Text(
                    "Leverage is a crucial part in the trading where most trader are getting trapped at their initial stages.",
                    style: AppStyles.text18PxMedium,
                  ),
                  Html(
                    data: LotSizeContents().lotSizeIntroduction,
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

class LotSizeContents {
  final String lotSizeIntroduction = '''

<p>In forex trading, a lot size refers to the number of currency units you buy or sell in a transaction. Understanding lot sizes is crucial because it helps you manage your risk and calculate potential profits or losses. There are four main types of lot sizes in forex:</p>
<p>To better understand about the lot sizes let’s classify into types and with example we will understand more about the lot sizes.</p>

<strong><h3>Standard Lot</h3></strong>
<ul>
    <li><strong>Equivalent</strong>: 1.00 lot</li>
    <li><strong>Size</strong>: 100,000 units of the base currency</li>
    <li><strong>Example</strong>: If you buy 1.00 lot of EUR/USD, you are buying 100,000 euros.</li>
</ul>

<strong><h3>Mini Lot</h3></strong>
<ul>
    <li><strong>Equivalent</strong>: 0.10 lot</li>
    <li><strong>Size</strong>: 10,000 units of the base currency</li>
    <li><strong>Example</strong>: If you buy 0.10 lot of EUR/USD, you are buying 10,000 euros.</li>
</ul>

<strong><h3>Micro Lot</h3></strong>
<ul>
    <li><strong>Equivalent</strong>: 0.01 lot</li>
    <li><strong>Size</strong>: 1,000 units of the base currency</li>
    <li><strong>Example</strong>: If you buy 0.01 lot of EUR/USD, you are buying 1,000 euros.</li>
</ul>

<strong><h3>Nano Lot</h3></strong>
<ul>
    <li><strong>Equivalent</strong>: 0.001 lot</li>
    <li><strong>Size</strong>: 100 units of the base currency</li>
    <li><strong>Example</strong>: If you buy 0.001 lot of EUR/USD, you are buying 100 euros. (Note: Not all brokers offer nano lots.)</li>
</ul>

<h3>Example Scenarios</h3>
<p>Let's use the EUR/USD currency pair with a current price of 1.2000 to see how each lot size works:</p>

<strong><h3>Standard Lot (1.00 lot)</h3><strong>
<ul>
    <li><strong>Trade Size</strong>: 1.00 lot</li>
    <li><strong>Value of 1 Pip</strong>: \$10</li>
    <li><strong>Total Value</strong>: 100,000 EUR * 1.2000 = 120,000 USD</li>
</ul>

<strong><h3>Mini Lot (0.10 lot)</h3></strong>
<ul>
    <li><strong>Trade Size</strong>: 0.10 lot</li>
    <li><strong>Value of 1 Pip</strong>: \$1</li>
    <li><strong>Total Value</strong>: 10,000 EUR * 1.2000 = 12,000 USD</li>
</ul>

<strong><h3>Micro Lot (0.01 lot)</h3></strong>
<ul>
    <li><strong>Trade Size</strong>: 0.01 lot</li>
    <li><strong>Value of 1 Pip</strong>: \$0.10</li>
    <li><strong>Total Value</strong>: 1,000 EUR * 1.2000 = 1,200 USD</li>
</ul>

<strong><h3>Nano Lot (0.001 lot)</h3></strong>
<ul>
    <li><strong>Trade Size</strong>: 0.001 lot</li>
    <li><strong>Value of 1 Pip</strong>: \$0.01</li>
    <li><strong>Total Value</strong>: 100 EUR * 1.2000 = 120 USD</li>
</ul>
''';
}
