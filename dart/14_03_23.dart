class Solution {
  int res = 0;
  int sumNumbers(TreeNode? root) {
    if (root == null) return 0;
    dfs(root, root.val.toString());
    return res;
  }

  dfs(TreeNode node, String currentVal) {
    if (node.left == null && node.right == null) {
      res += int.parse(currentVal);
      return;
    }
    if (node.left != null)
      dfs(node.left!, currentVal + node.left!.val.toString());
    if (node.right != null)
      dfs(node.right!, currentVal + node.right!.val.toString());
  }
}

void main(List<String> args) {
  TreeNode root =
      TreeNode(4, TreeNode(9, TreeNode(5), TreeNode(1)), TreeNode(0));
  print(Solution().sumNumbers(root));
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}
