require './lib/item'
require 'csv'

class ItemCollection
  attr_reader :items_filepath

  def initialize(items_filepath)
    @items_filepath = items_filepath
  end

  def all
    items_array = []
    CSV.foreach(@items_filepath, :headers => true) do |row|
      items_array << Item.new({
        :id            => row.field("id").to_i,
        :name          => row.field("name"),
        :description   => row.field("description"),
        :unit_price    => row.field("unit_price").to_i,
        :merchant_id   => row.field("merchant_id").to_i
        })
    end
    items_array
  end

  def where(merchant_id)
    items_with_merchant_id = []
    CSV.foreach(@items_filepath, :headers => true) do |row|
      if row.field("merchant_id").to_i == merchant_id
        items_with_merchant_id << Item.new({
          :id            => row.field("id").to_i,
          :name          => row.field("name"),
          :description   => row.field("description"),
          :unit_price    => row.field("unit_price").to_i,
          :merchant_id   => row.field("merchant_id").to_i
          })
      end
    end
    items_with_merchant_id
  end

end
