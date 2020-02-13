require 'minitest/autorun'
require 'minitest/pride'
require 'csv'
require './lib/sales_engine'
require './lib/merchants'
require './lib/merchant_collection'
require './lib/items.rb'
require './lib/item_collection.rb'

class ItemTest < Minitest:: Test


  def setup
    @items_csv = []
    CSV.foreach("./data/items.csv", headers: true, header_converters: :symbol) do |row|
    @items_csv << Item.new(row[:id], row[:name], row[:description], row[:unit_price], row[:merchant_id])
    end
    @item_collection = ItemCollection.new(@items_csv)
  end

  def test_an_item_exists
    assert_instance_of Item, @items_csv[6]
    require "pry"; binding.pry
    assert_instance_of ItemCollection, @item_collection
  end

  def test_item_attrs
    assert_equal "Course contre la montre", @items_csv[8].name

  end

  def test_where_merchant_id
    assert_equal [@items_csv[8]], @item_collection.where("12334195")
  end

end
