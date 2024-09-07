import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class TypesOfTradersPage extends StatelessWidget {
  const TypesOfTradersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Types of Trader",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - Different Traders", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Html(
                    data: TypesofTraderContent().candlestickIntroduction,
                    style: {
                      "h2": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w600),
                      "p": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "li": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "ul": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.typesoftrader.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  Html(
                    data: TypesofTraderContent().allTraderDescriptions,
                    style: {
                      "h2": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w600),
                      "p": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "li": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "ul": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    },
                  ),
                  30.verticalSpace
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TypesofTraderContent {
  final String candlestickIntroduction = '''
<p>In a battlefield, there are different types of warriors—some fight on the front lines, some provide support from the rear, and others lead as the central figures. Similarly, in the trading arena, we have various types of traders, each operating in different arenas, which we define as the different trading timeframes. </p>
 ''';
  final String allTraderDescriptions = '''
<p><strong>1. The Scalper (Frontline Warrior):</strong> Scalpers are like warriors on the front lines, engaging in numerous trades throughout the day. They aim to capture small profits from minor price movements, thriving in fast-paced environments where rapid decision-making is crucial. These traders exit positions almost as quickly as they enter them, reflecting their quick and decisive nature.</p>

<p><strong>2. The Day Trader (Tactical Commander):</strong> Day traders operate within the daily battlefield, holding positions from a few minutes to several hours. They focus on intraday price movements and excel in technical analysis. Like tactical commanders, day traders plan and execute strategies with precision, aiming to win the daily battles without carrying trades overnight.</p>

<p><strong>3. The Swing Trader (Strategic Planner):</strong> Swing traders are akin to strategic planners who analyze the battlefield from a broader perspective. They hold positions for several days to weeks, seeking to profit from medium-term trends. These traders rely on both technical and fundamental analysis, adjusting their strategies as market conditions evolve.</p>

<p><strong>4. The Position Trader (The General):</strong> Position traders are the generals of the trading world, overseeing the long-term battlefield. They hold positions for months or even years, focusing on macroeconomic trends and long-term market movements. Position traders are patient and disciplined, making decisions based on a deep understanding of global economic factors.</p>

<p><strong>5. The Algorithmic Trader (The Cyber Warrior):</strong> Algorithmic traders are like cyber warriors, using advanced technology to automate their trading strategies. They rely on algorithms and high-frequency trading systems to execute trades at lightning speed. These traders analyze vast amounts of data in real-time, making split-second decisions that humans could never achieve.</p>

<p><strong>6. The Investor (The Wise Elder):</strong> Investors can be compared to wise elders, providing guidance and foresight. Unlike traders, investors are in the market for the long haul, holding assets for years or decades. They focus on building wealth through compounding, relying on fundamental analysis and a belief in the long-term growth of their investments.</p>
 ''';
}
