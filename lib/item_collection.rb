require_relative './item'

class ItemCollection

  def initialize(path)
    @path = path
  end

  def where(merchant_id)
    all.find_all do |item|
      item.merchant_id.to_i == merchant_id
    end
  end

  def all
    list_items = []
    CSV.foreach(@path) do |row|
      list_items << Item.new({id: row[0].to_i, name: row[1], description: row[2], unit_price: row[3].to_i, merchant_id: row[4]})
    end
    list_items
  end

end