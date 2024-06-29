import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutterguide/src/core/core.dart';

class SidemenuNodes {
  final menuTree = TreeNode.root()
    ..addAll(
      [
        TreeNode(key: "Introduction", data: Icons.dashboard),
        TreeNode(key: "Basic of Forex", data: Icons.description)
          ..addAll([
            TreeNode(key: "Pips"),
            TreeNode(key: "Ask Bid"),
            TreeNode(key: "Spread"),
            TreeNode(key: "Lot Size"),
            TreeNode(key: "Margin"),
            TreeNode(key: "Brokers"),
            TreeNode(key: "Platform"),
          ]),
        TreeNode(key: "Candlesticks", data: Icons.cable)
          ..addAll([
            TreeNode(key: "What ? Why ? "),
            TreeNode(key: "Important CandleSticks"),
          ]),
        TreeNode(key: "CandleStick Patterns", data: Icons.cable)
          ..addAll([
            TreeNode(key: "What ? Why ?"),
            TreeNode(key: "5 best patterns"),
          ]),
        TreeNode(key: "Analysis", data: Icons.cable)
          ..addAll([
            TreeNode(key: "What ? Why ?"),
            TreeNode(key: "Analyzing the market"),
          ]),
        TreeNode(key: "Market Terms", data: Icons.collections_bookmark)
          ..addAll([
            TreeNode(key: "What ? Why ?"),
            TreeNode(key: "Support & Resistance"),
            TreeNode(key: "FVG"),
            TreeNode(key: "BOS"),
            TreeNode(key: "CHoCH"),
            TreeNode(key: "SSL"),
            TreeNode(key: "BSL"),
            TreeNode(key: "Trends"),
            TreeNode(key: "MSS"),
            TreeNode(key: "Fibonacci"),
            TreeNode(key: "Indicators"),
          ]),
        TreeNode(key: "Indicators", data: Icons.cable)
          ..addAll([
            TreeNode(key: "What ? Why ?"),
            TreeNode(key: "Important Indicators"),
          ]),
        TreeNode(key: "Strategies", data: Icons.cable)
          ..addAll([
            TreeNode(key: "Scalping"),
            TreeNode(key: "Day Trading"),
            TreeNode(key: "Swing Trading"),
            TreeNode(key: "Position Trading"),
          ]),
        TreeNode(key: "Entry Models", data: Icons.cable)
          ..addAll([
            TreeNode(key: "What ? Why ?"),
            TreeNode(key: "EM1"),
            TreeNode(key: "EM2"),
            TreeNode(key: "EM3"),
            TreeNode(key: "EM4"),
            TreeNode(key: "EM5"),
          ]),
        TreeNode(key: "Trading Plans", data: Icons.rule),
        TreeNode(key: "Big Players", data: Icons.brightness_1),
        TreeNode(key: "Profitable ? ", data: Icons.money),
        TreeNode(key: "The war", data: Icons.settings),
        TreeNode(key: "The truth of trading", data: Icons.settings),
      ],
    );
}
