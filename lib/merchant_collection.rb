require 'CSV'

class MerchantCollection

  attr_reader :find

  def initialize(path)
    @path = path
    @merchant_collection = []
  end

  def merchant_collection
    CSV.foreach(@path, headers: true, header_converters: :symbol) do |merchant|
      @merchant_collection << merchant
    end
    @merchant_collection
  end

  def all

  end

  def find(id)
    @merchant_collection.find do |merchant|
      binding.pry
    end

  end


end
