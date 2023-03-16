import 'tree_node.dart';

class Solution {
  bool result = false;
  bool isCompleteTree(TreeNode? root) {
    treeNodeChecker(root);
    return result;
  }

  void treeNodeChecker(TreeNode? node,
      {TreeNode? prevNode, bool isLeft = false, bool isprevLeft = false}) {
    if (node == null && prevNode == null) {
      return;
    } else if (prevNode == null && node!.left == null && node.right == null) {
      result = true;
      return;
    }
    if (node != null) {
      if (node.left == null && node.right == null) {
        bool checkNode = isprevLeft
            ? !(prevNode!.left == null || prevNode.right == null)
            : prevNode!.right == null;
        // if (isLeft) {
        print('Node');
        print(prevNode);
        print(node);
        if (checkNode) {
          print(node);
          result = true;
          // }
        }
      }
    }
    if (node != null) {
      treeNodeChecker(node.right, prevNode: node, isprevLeft: isLeft);
      treeNodeChecker(node.left,
          prevNode: node, isLeft: true, isprevLeft: isLeft);
    }
  }
}

void main(List<String> args) {
  TreeNode root = TreeNode(
      1, TreeNode(2, TreeNode(5)), TreeNode(3, TreeNode(7), TreeNode(8)));
  print(Solution().isCompleteTree(root));
  root = TreeNode(
      1, TreeNode(2, TreeNode(4), TreeNode(5)), TreeNode(3, null, TreeNode(7)));
  print(Solution().isCompleteTree(root));
  //  root = TreeNode(
  //     1, TreeNode(2, TreeNode(4), TreeNode(5)), TreeNode(3, null,TreeNode(7)));
  // print(Solution().isCompleteTree(root));
  // root = TreeNode(
  //   1,
  // );
  // print(Solution().isCompleteTree(root));
}


// last and inverse