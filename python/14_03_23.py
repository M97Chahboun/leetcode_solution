class TreeNode(object):
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

class Solution(object):
    def sumNumbers(self, root):
        if not root: return 0
        self.res = 0
        self.dfs(root, str(root.val))
        return self.res

    def dfs(self, node, cur_str):
        if not node.left and not node.right:
            self.res += int(cur_str)
            return 
        
        if node.left: self.dfs(node.left, cur_str + str(node.left.val))
        if node.right: self.dfs(node.right, cur_str + str(node.right.val))



root = TreeNode(4, TreeNode(9, TreeNode(5), TreeNode(1)), TreeNode(0));
print(Solution().sumNumbers(root));

# Copied from github with modification