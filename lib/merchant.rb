# require 'csv'
# require './data/merchant.cvs'
class Merchant
  attr_reader :id,
              :name
  def initialize(merchant_object)
    @id = merchant_object[:id]
    @name = merchant_object[:name]

  end
end
