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
    @node.add(32)

    assert_equal node2, @node.right.value

    @node.add(16)

    assert_equal 16, @node.left.value
  end
end
