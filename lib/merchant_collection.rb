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
    @merchants.select { |merchant| merchant.id == id.to_s}.first
  end

  def create(merchant_name)
    previous_max_id = @merchants.map { |merchant| merchant.id.to_i}.max
    new_merchant = Merchant.new({:id => (previous_max_id + 1).to_s, :name => merchant_name[:name]})
    @merchants << new_merchant
    new_merchant
  end

  def update(arguments)
    find(arguments[:id]).name = arguments[:name]
  end

  def destroy(id)
    @merchants.delete(find(id))
  end
end
