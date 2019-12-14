require 'csv'

class ItemCollection
  attr_reader :items_filepath

  def initialize(items_filepath)
    @items_filepath = items_filepath
  end

  def all
    items_array = []
    i_t = CSV.foreach(@items_filepath, :headers => true) do |row|
      items_array << Item.new(row.field("id")) #need to be able to pass in id, descr, etc...
    end
    items_array

    # map over parsed items.csv
    # Inside parsor - create items
    # parse csv according to id, name, descr, unit price, and merch_id
      #return array of all items
  end

  def where(merchant_id)

  end

end

#create item class and item test
