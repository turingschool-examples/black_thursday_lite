require './lib/merchant'
require 'csv'

class MerchantCollection

  attr_reader :merchants

  def initialize(csv_path)
    @csv_path = csv_path
    @merchants = []
  end

  def create(csv_path = @csv_path)
    CSV.foreach(@csv_path, headers: true, header_converters: :symbol) do |row|
      @merchants << Merchant.new(row[:id], row[:name])
    end
  end

  def find(position)
    @items[position]
  end

  def all
    @items
  end

end
