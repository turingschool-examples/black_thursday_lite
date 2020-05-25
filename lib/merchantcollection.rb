require './lib/salesengine'
require './lib/merchant'
require 'csv'
require 'pry'

class MerchantCollection
  attr_reader :all

  def initialize(merchant_list)
    @all = merchant_list
  end

  def find(id)
    binding.pry

  end
end
