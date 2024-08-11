
class TreeNode
  attr_accessor :value, :left_child, :right_child
  def initialize(value, left= nil, right = nil)
    @value = value
    @left_child = left
    @right_child = right
  end
  def search(value, node)
    # Basecase scenario : if the node is non-existent
    # #or we have found the value we are looking for
    if node == nil || node.value == value
      return node
    
    elsif value < node.value
      return search(value, node.left_child)

    else
      return search(value, node.right_child)
    end
  end

  def insert(value,node)
    if value < node.value
      if node.left_child == nil
        node.left_child = TreeNode.new(value)
      else
        insert(value, node.left_child)
      end
    elsif value > node.value
      if node.right_child == nil
        node.right_child = TreeNode.new(value)
      else
        insert(value, node.right_child)
      end
    end
  end

  def delete(value, node)
    # The base case is when we hit the bottom of the tree
    # and the parent node has not childern
    if node.left_child == nil && node.right_child == nil
      return nil

    # If the value we are deleteing is less or greater than the current node,
    # we set the left or right child respectively to be
    # the return value of a recrusive call of this
    # very method on the current
    # node's left or right subtree.
    elsif value < node.value
      node.left_child = delete(value, node.left_child)
      return node
    elsif node.value == value
      #if the current node has no left child, we delete it by
      #returning its right child(and it subtree if existent)
      #to be its parent's new subtree:
      if node.left_child == nil
        return node.right_child
        # if current node has no right or left child, this ends up
        # being nil as per first line of code in this function
      elsif node.right_child == nil
        return node.left_child
        
      end
    end
  end

end

node1 = TreeNode.new(25)
node2 = TreeNode.new(75)
root = TreeNode.new(50, node1, node2)
node3 = TreeNode.new(10)
node4 = TreeNode.new(33)
node1.left_child = node3
node1.right_child = node4
node5 = TreeNode.new(56)
node6 = TreeNode.new(89)
node2.left_child = node5
node2.left_child = node6
p root.search(56,root)