require 'CSV'
class SalesEngine
  def initialize(items, merchants)
   @items = items
   @merchants = merchants
  end

  def self.from_csv(data)
    items = CSV.parse(File.read(data[:items]), headers: true)
    merchants = CSV.parse(File.read(data[:merchants]), headers: true)
    SalesEngine.new(items, merchants)
  end

  def merchant_list
    @merchants.map do|row|
      merchant = {}
      merchant[:id] = row['id'].to_i
      merchant[:name] = row['name']
      merchant
    end
  end

  def merchant_collection
    all_merchants = merchant_list.map{|merchant| Merchant.new(merchant)}
    MerchantCollection.new(all_merchants)
  end

  def item_list
    @items.map do|row|
      item = {}
      item[:id] = row['id'].to_i
      item[:name] = row['name']
      item[:description] = row['description']
      item[:unit_price] = row['unit_price']
      item[:merchant_id] = row['merchant_id']
      item
    end
  end

  def item_collection
    all_items = item_list.map{|item| Item.new(item)}
    ItemCollection.new(all_items)
  end
end
