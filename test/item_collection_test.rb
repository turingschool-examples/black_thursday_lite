require 'csv'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/item'
require './lib/sales_engine'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test
  def setup
    @item_collection = ItemCollection.new("./data/items.csv")
    @german_item_1 = Item.new({
      :id => 263396279,
      :name => "Eule - Topflappen, handgehäkelt, Paar",
      :description => "Handgerfertigete Topflappen in Form einer Eule. Die Topflappen wurden aus Wolle gehäkelt. Als Augen wurden Knöpfe verwendet.\n\nDer Verkauf erfolgt paarweise.\n\nHandmade in Germany\n\nMasse: Länge 22,5cm; Breite (breiteste Stelle) 17 cm",
      :unit_price => 1490,
      :merchant_id => 12334213,
      :created_at => "2016-01-11 10:06:10 UTC",
      :updated_at => "1995-03-08 17:49:21 UTC"
    })

    @german_item_2 = Item.new({
      :id => 263396463,
      :name => "Kindersocken (Söckchen), hangestrickt, Länge ca.15 cm, beige (eierschalenfarben)",
      :description => "Handgestricke Kindersocken aus beiger (eierschalenfarben) Wolle. sehr weich, bequem und warm.\n\nVerkauf erfolgt paarweise.\n\nHandmade in Germany\n\nHöhe (längste Stelle: 11 cm); Breite (breiteste Stelle) 15 cm",
      :unit_price => 690,
      :merchant_id => 12334213,
      :created_at => "2016-01-11 10:06:10 UTC",
      :updated_at => "1988-10-07 19:47:45 UTC"
    })

  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_has_no_items
    assert_equal [], @item_collection.items
  end

  def test_it_can_create_an_array_of_all_item_instances
    items = @item_collection.all
    assert_equal Item, items.first.class
  end

  def test_it_can_search_items_for_a_specific_id
    @item_collection.all

    assert_equal [], @item_collection.where(5)

    found_item_1 = @item_collection.where(12334213)
    german_item_1 = @german_item_1.id
    found_item_2 = @item_collection.where(12334213)
    german_item_2 = @german_item_2.id
    assert_equal german_item_1, found_item_1.first.id
    assert_equal german_item_2, found_item_2.last.id
  end
end
