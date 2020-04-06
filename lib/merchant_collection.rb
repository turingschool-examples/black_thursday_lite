require 'CSV'

class MerchantCollection
  attr_reader :id,
              :name

  def initialize(merchant_params)
    @id = merchant_params[:id]
    @name = merchant_params[:name]
  end

  def all
    CSV.read("data/merchants.csv")
  end

  def find(id)

  end
end
