import 'package:flutterguide/src/core/core.dart';

class SidemenuNodes {
  final menuTree = TreeNode.root()
    ..addAll(
      [
        TreeNode(key: "Introduction", data: Icons.dashboard),
        TreeNode(key: "Basic of Forex", data: Icons.description)
          ..addAll([
            TreeNode(key: "Pips"),
            TreeNode(key: "Ask Bid Spread"),
            TreeNode(key: "Leverage"),
            TreeNode(key: "Lot Size"),
            TreeNode(key: "SL, TP, BE, TSL"),
            TreeNode(key: "Brokers and Platforms"),
          ]),
        TreeNode(key: "Candlesticks", data: Icons.cable)
          ..addAll([
            TreeNode(key: "Candlestick What ? Why ?"),
            TreeNode(key: "Important CandleSticks"),
            // TreeNode(key: "Important candlesticks patterns"),
          ]),
        TreeNode(key: "CandleStick Patterns", data: Icons.cable)
          ..addAll([
            TreeNode(key: "CandleStick Patterns What ? Why ?"),
            TreeNode(key: "Important Candlestick Patterns"),
          ]),
        TreeNode(key: "Market Terms", data: Icons.collections_bookmark)
          ..addAll([
            TreeNode(key: "Support & Resistance"),
            TreeNode(key: "FVG"),
            TreeNode(key: "BOS & ChoCh"),
            TreeNode(key: "Liquidity"),
            TreeNode(key: "SSL & BSL"),
          ]),
        TreeNode(key: "Indicators", data: Icons.collections_bookmark)
          ..addAll([
            TreeNode(key: "Fibonacci"),
            TreeNode(key: "Volume"),
            TreeNode(key: "RSI"),
            TreeNode(key: "Fixed Volume Profile"),
          ]),
        TreeNode(key: "Type of Traders", data: Icons.cable),
        TreeNode(key: "Entry Models", data: Icons.cable)
          ..addAll([
            TreeNode(key: "EM1"),
            TreeNode(key: "EM2"),
            TreeNode(key: "EM3"),
            // TreeNode(key: "EM4"),
            // TreeNode(key: "EM5"),
          ]),
        TreeNode(key: "Trading Plans", data: Icons.rule),
        TreeNode(key: "Big Players", data: Icons.brightness_1),
        TreeNode(key: "The truth of trading", data: Icons.settings),
      ],
    );
}
