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
            TreeNode(key: "Leverage"),
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

  final indexedTreeNode = IndexedTreeNode.root()
    ..addAll(
      [
        IndexedTreeNode(key: "Introduction", data: Icons.dashboard),
        IndexedTreeNode(key: "Basic of Forex", data: Icons.description)
          ..addAll([
            IndexedTreeNode(key: "Pips"),
            IndexedTreeNode(key: "Ask Bid"),
            IndexedTreeNode(key: "Leverage"),
            IndexedTreeNode(key: "Spread"),
            IndexedTreeNode(key: "Lot Size"),
            IndexedTreeNode(key: "Margin"),
            IndexedTreeNode(key: "Brokers"),
            IndexedTreeNode(key: "Platform"),
          ]),
        IndexedTreeNode(key: "Candlesticks", data: Icons.cable)
          ..addAll([
            IndexedTreeNode(key: "What ? Why ? "),
            IndexedTreeNode(key: "Important CandleSticks"),
          ]),
        IndexedTreeNode(key: "CandleStick Patterns", data: Icons.cable)
          ..addAll([
            IndexedTreeNode(key: "What ? Why ?"),
            IndexedTreeNode(key: "5 best patterns"),
          ]),
        IndexedTreeNode(key: "Analysis", data: Icons.cable)
          ..addAll([
            IndexedTreeNode(key: "What ? Why ?"),
            IndexedTreeNode(key: "Analyzing the market"),
          ]),
        IndexedTreeNode(key: "Market Terms", data: Icons.collections_bookmark)
          ..addAll([
            IndexedTreeNode(key: "What ? Why ?"),
            IndexedTreeNode(key: "Support & Resistance"),
            IndexedTreeNode(key: "FVG"),
            IndexedTreeNode(key: "BOS"),
            IndexedTreeNode(key: "CHoCH"),
            IndexedTreeNode(key: "SSL"),
            IndexedTreeNode(key: "BSL"),
            IndexedTreeNode(key: "Trends"),
            IndexedTreeNode(key: "MSS"),
            IndexedTreeNode(key: "Fibonacci"),
            IndexedTreeNode(key: "Indicators"),
          ]),
        IndexedTreeNode(key: "Indicators", data: Icons.cable)
          ..addAll([
            IndexedTreeNode(key: "What ? Why ?"),
            IndexedTreeNode(key: "Important Indicators"),
          ]),
        IndexedTreeNode(key: "Strategies", data: Icons.cable)
          ..addAll([
            IndexedTreeNode(key: "Scalping"),
            IndexedTreeNode(key: "Day Trading"),
            IndexedTreeNode(key: "Swing Trading"),
            IndexedTreeNode(key: "Position Trading"),
          ]),
        IndexedTreeNode(key: "Entry Models", data: Icons.cable)
          ..addAll([
            IndexedTreeNode(key: "What ? Why ?"),
            IndexedTreeNode(key: "EM1"),
            IndexedTreeNode(key: "EM2"),
            IndexedTreeNode(key: "EM3"),
            IndexedTreeNode(key: "EM4"),
            IndexedTreeNode(key: "EM5"),
          ]),
        IndexedTreeNode(key: "Trading Plans", data: Icons.rule),
        IndexedTreeNode(key: "Big Players", data: Icons.brightness_1),
        IndexedTreeNode(key: "Profitable ? ", data: Icons.money),
        IndexedTreeNode(key: "The war", data: Icons.settings),
        IndexedTreeNode(key: "The truth of trading", data: Icons.settings),
      ],
    );
}
