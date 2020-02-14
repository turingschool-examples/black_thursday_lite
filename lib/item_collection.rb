require 'csv'

class Item_Collection
  attr_reader :items

  def initialize
    items []
  end

  def add_items
  CSV.foreach('./data/items.csv', headers: true) do |row|
    items << row
  end  




  end
