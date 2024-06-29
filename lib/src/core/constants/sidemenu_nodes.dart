import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutterguide/src/core/core.dart';

class SidemenuNodes {
  final menuTree = TreeNode.root()
    ..addAll(
      [
        TreeNode(key: "Introduction", data: Icons.dashboard),
        TreeNode(key: "Learn", data: Icons.description)
          ..addAll([
            TreeNode(key: "Dart"),
            TreeNode(key: "Flutter"),
          ]),
        TreeNode(key: "CandleSticks", data: Icons.cable)
          ..addAll([
            TreeNode(key: "Basics")
              ..addAll(
                [
                  TreeNode(key: "Bearish"),
                  TreeNode(key: "Bullish"),
                ],
              ),
            TreeNode(key: "Better")
              ..addAll(
                [
                  TreeNode(key: "Wick"),
                  TreeNode(key: "Morning Star"),
                ],
              ),
            TreeNode(key: "Material"),
          ]),
        TreeNode(key: "CandleStick Patterns", data: Icons.cable)..addAll([]),
        TreeNode(key: "Entry Models", data: Icons.analytics),
        TreeNode(key: "Entry Models Example", data: Icons.collections_bookmark)
          ..addAll([
            TreeNode(key: "EM1"),
            TreeNode(key: "EM2"),
          ]),
        TreeNode(key: "Trading Rules", data: Icons.rule),
        TreeNode(key: "Big Players", data: Icons.brightness_1),
        TreeNode(key: "What's next ?", data: Icons.brightness_1),
        TreeNode(key: "Profitable ? ", data: Icons.money),
        TreeNode(key: "Settings", data: Icons.settings),
      ],
    );
}
