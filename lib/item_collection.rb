require 'csv'

class ItemCollection
  attr_reader :items_filepath

  def initialize(items_filepath)
    @items_filepath = items_filepath
  end

  def all
    items_array = []
    CSV.foreach(@items_filepath, :headers => true) do |row|
      items_array << Item.new(row.field("id")) #need to be able to pass in
      #row.field("name"), row.field("description"), row.field("unit_price"), etc
    end
    items_array

    # map over parsed items.csv
    # Inside parsor - create items
    # parse csv according to id, name, descr, unit price, and merch_id
      #return array of all items
  end

  def where(merchant_id)
    items_with_merchant_id = []
    CSV.foreach(@items_filepath, :headers => true) do |row|
      if row.field("merchant_id") == merchant_id
        items_with_merchant_id << Item.new(row.field("id"), row.field("description"), etc...)
      end
    end
    items_with_merchant_id
  end

end

#create item class and item test
