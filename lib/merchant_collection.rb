
class MerchantCollection
  attr_reader :all

  def initialize(merchants)
    @all = merchants
  end

  def find(id)
    require "pry"; binding.pry
    @all.find do |merchant|
      merchant.id == id
    end
  end

end
