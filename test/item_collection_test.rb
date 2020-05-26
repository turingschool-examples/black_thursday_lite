require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test
  def setup
    @item_1 = Item.new({
              :id          => 263408101,
              :name        => "Freedom",
              :description => "This painting has spray paint as the primary medium - entirely hand painted and free style on the lettering and all details within the elephant face. Any variations can be made including size alterations or color changes.",
              :unit_price  => 4000,
              :merchant_id => 12334783
            })
    @item_2 = Item.new({
              :id          => 263408741,
              :name        => "Freedom",
              :description => "This painting has spray paint as the primary medium - entirely hand painted and free style on the lettering and all details within the elephant face. Any variations can be made including size alterations or color changes.",
              :unit_price  => 4000,
              :merchant_id => 12334783
            })
  end
end
