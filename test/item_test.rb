require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/item'
require 'csv'

class ItemTest < Minitest::Test

  def test_it_exists
    item = Item.new('./data/items.csv')
    assert_instance_of Item, item
  end

  def test_it_parses_data
    item = Item.new('./data/items.csv')
    item.read_it
    #binding.pry
  end
end
