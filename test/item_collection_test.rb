require 'csv'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sales_engine'
require_relative '../lib/item.rb'
require_relative '../lib/item_collection.rb'
require 'pry'

class ItemCollectionTest < Minitest::Test

        def setup
                @sales_engine = SalesEngine.from_csv({
                 :items     => "./data/items.csv",
                 :merchants => "./data/merchants.csv",
                })
                @item_collection = @sales_engine.item_collection
		@array = []
        end

        def test_item_collection_exists
                assert_instance_of ItemCollection, @item_collection
        end

        def test_attributes
                assert_instance_of Item, @item_collection.items.sample
        end

        def test_where
                assert_equal @array << @item_collection.items[0], @item_collection.where("12334141")
        end                
end
