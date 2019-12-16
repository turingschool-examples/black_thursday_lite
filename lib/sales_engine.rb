require 'csv'
require './lib/item_collection'
require './lib/merchant_collection'
require 'pry'

class SalesEngine

  attr_accessor :items, :merchants

  def initialize(items, merchants)
    @items = items
    @merchants = merchants
  end

  def self.from_cvs(data) #might need another argument) this will need to be method .from_csv
    # items_list = #needs to be method on item class (data[:items])
    # merchant_list = #needs to be method on mechant class (data[:merchants])
    # self.new(items_list, merchant_list)
  end

end
