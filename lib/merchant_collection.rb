require './lib/merchant'
require 'csv'

class MerchantCollection

  attr_reader :items

  def initialize(csv_path)
    @csv_path = csv_path
    @items = []
  end

  def create(csv_path = @csv_path)
    CSV.foreach(@csv_path, headers: true, header_converters: :symbol) do |row|
      @items << Merchant.new(row[:id], row[:name])
    end
  end

  def find(position)
    @items[position]
  end

  def all
    @items
  end

end
