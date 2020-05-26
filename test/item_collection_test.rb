require "./lib/item_collection"
require "minitest/autorun"
require "minitest/pride"

class ItemCollectionTest < Minitest::Test

  def setup
    @item_collection = ItemCollection.new("./util/items.csv")
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_it_gets_all_of_the_items
    items = @item_collection.all
    assert_instance_of Array, items
    assert items.all? { |item| item.class == Item }
  end

  def test_it_can_look_up_items_by_merchant_id
    assert_equal [], @item_collection.where({merchant_id: 42})

    merchant_3_items = @item_collection.where({merchant_id: 12334195})
    assert_instance_of Array, merchant_3_items
    assert_equal true, merchant_3_items.all? { |item| item.class == Item }
    assert_equal 1, merchant_3_items.length

    merchant_2_items = @item_collection.where({merchant_id: 12334185})
    assert_instance_of Array, merchant_2_items
    assert_equal 3, merchant_2_items.length
    assert_equal true, merchant_2_items.all? { |item| item.class == Item }

    merchant_1_items = @item_collection.where({merchant_id: 12334141})
    assert_instance_of Array, merchant_1_items
    assert_equal 1, merchant_1_items.length
    assert_equal true, merchant_1_items.all? { |item| item.class == Item }
  end

  def test_it_can_find_items_by_merchant_id_hash
    writing_tools_collection = ItemCollection.new("./util/writing_tools.csv")

    all_pencils = writing_tools_collection.where({merchant_id: 34})
    assert_instance_of Array, all_pencils
    refute_empty all_pencils
    assert_equal true, all_pencils.all? { |item| item.class == Item }
    assert_equal true, all_pencils.all? { |item| item.name == "Pencil" }

    all_pens = writing_tools_collection.where({merchant_id: 35})
    assert_instance_of Array, all_pens
    refute_empty all_pens
    assert_equal true, all_pens.all? { |item| item.class == Item }
    assert_equal true, all_pens.all? { |item| item.name == "Pen" }
  end

  def test_it_can_find_items_by_name_hash
    writing_tools_collection = ItemCollection.new("./util/writing_tools.csv")

    all_pencils = writing_tools_collection.where({name: "Pencil"})
    assert_instance_of Array, all_pencils
    refute_empty all_pencils
    assert_equal true, all_pencils.all? { |item| item.class == Item }
    assert_equal true, all_pencils.all? { |item| item.name == "Pencil" }

    all_pens = writing_tools_collection.where({name: "Pen"})
    assert_instance_of Array, all_pens
    refute_empty all_pens
    assert_equal true, all_pens.all? { |item| item.class == Item }
    assert_equal true, all_pens.all? { |item| item.name == "Pen" }
  end

  def test_it_can_find_items_by_price_hash
    writing_tools_collection = ItemCollection.new("./util/writing_tools.csv")

    all_pencils = writing_tools_collection.where({price: 50})
    assert_instance_of Array, all_pencils
    refute_empty all_pencils
    assert_equal true, all_pencils.all? { |item| item.class == Item }
    assert_equal true, all_pencils.all? { |item| item.name == "Pencil" }

    all_pens = writing_tools_collection.where({price: 55})
    assert_instance_of Array, all_pens
    refute_empty all_pens
    assert_equal true, all_pens.all? { |item| item.class == Item }
    assert_equal true, all_pens.all? { |item| item.name == "Pen" }
  end

end
