require "minitest/autorun"
require "minitest/pride"
require "./lib/item"

class ItemTest < Minitest::Test

  def test_it_exits
    item = Item.new({
              :id          => 1,
              :name        => "Pencil",
              :description => "You can use it to write things",
              :unit_price  => 1099,
              :merchant_id => 2
            })

    assert_instance_of Item, item
  end

end
