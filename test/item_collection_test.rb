require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'
require './lib/item'
require './lib/sales_engine'
require './lib/item_collection'
require './lib/merchant_collection'
require 'csv'

class ItemCollectionTest < Minitest::Test

  def setup
    @sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    @item_collection = @sales_engine.item_collection
    @merchant_collection = @sales_engine.merchant_collection
  end

  def test_it_exists
    assert_instance_of ItemCollection, @item_collection
  end

  def test_all
    assert_instance_of Item, @item_collection.all.first
    assert_instance_of Item, @item_collection.all[23]
    assert_instance_of Item, @item_collection.all[97]
    assert_instance_of Item, @item_collection.all.last
  end

  def test_where_merchant_id
    merchant = @merchant_collection.find(12334859)
    items = @item_collection.where({merchant_id: merchant.id})
    test_items = items.map{|item| item.name}

    assert_equal ["Maxi bolso Woodland"], test_items
  end

  def test_where_name
    items = @item_collection.where({name: "Disney scrabble frames"})
    test_items = items.map{|item| item.id}

    assert_equal ["263395721"], test_items
  end

  def test_where_price
    items = @item_collection.where({unit_price: 1200})
    test_items = items.map{|item| item.name}

    assert_equal ["510+ RealPush Icon Set", "Bootees", "Honey infused with Strawberries and Serranos", "Honey infused with Thai Chilies, Cilantro, and Ginger", "Personalized Wine Glasses", "Handmade primitive repurposed wine bottle", "Orecchini soutache con madreperla", "Elmo gladiatorio: Provocator", "Elmo gladiatorio: Trace A", "Knit turtleneck sweater, L", "Fuzzed out leopard pencil skirt, size 6", "Adults personalised bangle - Any wording", "Pink cute beanie", "Handmade Crocheted Boot Cuffs", "White fuzz sweater, size S", "Dirty 30 Birthday wine glass", "Custom Mugs", "Eat Drink Be Happy Shibori Kitchen Tea Towel", "Honey infused with Ghost Chilies and Coconut", "Honey infused with Habaneros", "Personalized Tumblers", "Lost.", "Stormy Day at the Depot.", "Handmade Shell Pattern Scarf.", "Monogram Onesies", "Amazonite Tassel Bracelet (AA Grade)", "Elmo calcidese costruito", "Cute pink flower beanie", "Gray beanie", "Plus size pink and gray beanie", "Mr and Mrs Paddles, Pair of Pink & Blue Glitter Paddles for Party Games and Hen Parties", "Sac filet réutilisable avec poignée pour fruits/légumes", "my homemade scented candles are organic. they have a wonderful relaxing fragrance", "Customs Hats !", "Aqua Druzy Pendant!", "Horn and Turquiose Earrings", "Be My Valentine Shibori Kitchen Tea Towel", "Scottish Thistles Wine Bottles", "Bracelets for your littles", "Dog", "Hello There Shibori kitchen tea towel"], test_items
  end

end
