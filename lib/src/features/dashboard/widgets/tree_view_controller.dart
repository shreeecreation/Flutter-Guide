import 'package:animated_tree_view/animated_tree_view.dart';

class TreeViewControllerHelper {
  // Singleton instance

  // Factory constructor

  // TreeViewController instance
  static late final  TreeViewController treeViewController;

  // Initialize the controller
  static void initialize(TreeViewController<Object?, TreeNode> controller) {
    treeViewController = controller;
  }
}
