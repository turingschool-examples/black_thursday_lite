require './lib/merchant'
require './lib/item'
require 'csv'
require 'pry'

class SalesEngine

  def self.from_csv(file_paths)
    item_path = file_paths[:items]
    merchant_path = file_paths[:merchants]
    SalesEngine.new(item_path, merchant_path)
  end

  attr_reader :item_path,
              :merchant_path

  def initialize(item_path, merchant_path)
    @item_path = item_path
    @merchant_path = merchant_path
  end

  def items
    Item.from_csv(@item_path)
    Item.all
  end

  def merchants
    Merchant.from_csv(@merchant_path)
    Merchant.all
  end
end
