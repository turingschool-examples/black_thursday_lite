require './lib/merchant.rb'

class MerchantCollection
  attr_reader :all

  def initialize(merchants)
    @all = merchants
  end

  def find(id)
    @all.find {|merchant| merchant.id == id}
  end

  def create(merchant_params)
    merchant_max_id = @all.max_by(&:id)
    new_id = merchant_max_id.id + 1
    merchant_params[:id] = new_id
    Merchant.new(merchant_params)
  end

end
