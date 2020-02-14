require "minitest/autorun"
require "minitest/pride"
require "./lib/tree_node"

class TreeNodeTest < Minitest::Test
  def setup
    @node = TreeNode.new(32)
  end

  def test_it_exists
    assert_instance_of TreeNode, @node
  end

  def test_it_has_attributes
    assert_equal 32, @node.value
    assert_nil @node.left
    assert_nil @node.right
  end

  def test_it_can_add

    assert_equal true, @node.add(46)
    assert_equal false, @node.right.nil?
    assert_equal 46, @node.right.value
    assert_instance_of TreeNode, @node.right

    assert_equal true, @node.add(16)
    assert_equal false, @node.left.nil?
    assert_instance_of TreeNode, @node.left
    assert_equal 16, @node.left.value

    assert_equal false, @node.add(32)
  end
end
