require './lib/merchant'
require 'pry'

class MerchantCollection
  attr_reader :all

  def initialize(table)
    @all = table
  end

  def find(id)
    @all.find do |merchant|
      merchant.id == id
    end
  end

  def create(merchant)
    id = @all[-1].id + 1
    new_merchant = Merchant.new({id: id, name: merchant[:name]})
    @all << new_merchant
    id
  end

  def update(merchant)
    @all.find {|merch| merch.id == merchant[:id]}.update(merchant[:name])
  end

  def destroy(merchant_id)
    deleted_merchant = @all.find {|merchant| merchant.id == merchant_id}
    @all.delete(deleted_merchant)
  end

end
