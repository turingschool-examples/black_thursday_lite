require './lib/merchant'
require 'csv'

class MerchantCollection

  attr_reader :merchants

  def initialize(path)
    @merchants = []
    CSV.foreach(path, headers: true, header_converters: :symbol) do |row|
        @merchants << Merchant.new({:id => row[:id], :name => row[:name]})
    end
  end

  def all
    @merchants
  end

  def find(id)
    @merchants[id]
  end


end
