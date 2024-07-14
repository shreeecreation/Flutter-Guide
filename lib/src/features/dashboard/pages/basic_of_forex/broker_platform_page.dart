import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class BrokerPlatformPage extends StatelessWidget {
  const BrokerPlatformPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Learn Forex - Brokers and Platforms",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Brokers and Platforms", style: AppStyles.text24PxBold),
                  Html(
                    data: BrokerPlatformContent().brokerPlatformIntroduction,
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

class BrokerPlatformContent {
  final String brokerPlatformIntroduction = '''
<p>The time comes now we start trading through different brokers and platforms.</p>
<p>We will go with the demo account on these platforms to get practical knowledge we gain from the basics of forex.</p>
<p>Warriors let’s see how the battleground looks like. I believe you have already seen on different social media how trading looks like, but real trading is far different than social media trading.</p>
<p>We don’t need to know about the different analysis techniques for now. First, we will see our battlefield, and in the next section, we will learn to analyze the market and take a trade.</p>
<p>The famous brokers and platforms where we can trade the forex market are:</p>
<p><strong>MetaTrader</strong></p>
<p><strong>OctaFX</strong></p>
<p><strong>Exness</strong></p>
<p><strong>Pepperstone</strong></p>
<p><strong>AvaTrade</strong></p>
<p>These different brokers and platforms have their own benefits according to their rules.</p>
<p>We have been trading on MetaTrader, OctaFX, and Exness since we started. The spread may differ on each platform. As beginners, we will use MetaTrader for now because MetaTrader was the first trading platform for the forex market.</p>
<p>To open a demo account on MetaTrader, here is the step-by-step process to start a trading account:</p>
<p>MetaTrader is available for all platforms like web, iOS, Mac, desktop, and mobile phones.</p>

''';
}
