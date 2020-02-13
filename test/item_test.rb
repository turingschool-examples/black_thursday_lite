require_relative 'test_helper.rb'
require './lib/item.rb'

class ItemTest < Minitest::Test

  def setup
    @new_instance = Item.new
  end

  def test_it_exists
    assert_instance_of Item, @new_instance
  end

end
