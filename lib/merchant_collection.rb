class MerchantCollection

  attr_reader :all
  def initialize
    @all = []
  end

  def find(id)
    @all.find do |merchant|
      merchant.id = id
    end
  end

end
