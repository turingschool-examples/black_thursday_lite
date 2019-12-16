require 'csv'

class SalesEngine

  def initialize(items, merchants)
    @merchants = merchants
    @items = items
  end

  def self.from_csv(file_path_hash)
      items = CSV.read(file_path_hash[:items], headers: true)
      merchants = CSV.read(file_path_hash[:merchants], headers: true)
    items_array = items.map do |row|
      Item.new({id: row[0].to_s, name: row[1], description: row[2],
         unit_price: row[3].to_s, merchant_id: row[4].to_s })
    end  #try row[:id]  instead of row[0]
    merchants_array = merchants.map do |row|
      Merchant.new({id: row[0], name: row[1]})
    end

    self.new(attributes)
  end

  def items


  end


end
