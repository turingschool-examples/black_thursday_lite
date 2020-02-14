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

  def test_it_has_value
    assert_equal 32, @node.value
  end
end
