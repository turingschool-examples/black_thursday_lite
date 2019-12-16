require './lib/sales_engine'
require './lib/item'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class SalesEngineTest < Minitest::Test

  def setup
    item = Item.new({
      :id          => 1,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 1099,
      :merchant_id => 2
    })
  end








item = Item.new({
  :id          => 1,
  :name        => "Pencil",
  :description => "You can use it to write things",
  :unit_price  => 1099,
  :merchant_id => 2
})
