require 'csv'

class ItemsCollection
  attr_reader :list, :id, :name, :discription, :unit_price,
              :merchant_id, :number_of_items

  def initialize(id, name, description, unit_price, merchant_id)
      @id = id
      @name =  name
      @discription = discription
      @unit_price = unit_price
      @merchant_id = merchant_id
  end

  def self.create_multiple_items(file_path)
    items = []
    CSV.foreach(file_path, headers: true) do |row|
      items << ItemsCollection.new(row['id'], row['name'], row['discription'],
                         row['unit_price'], row['merchant_id'])
    end
    items
  end



end
