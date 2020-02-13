require './lib/item'
require 'csv'

class ItemCollection

  attr_reader :items

  def initialize(csv_path)
    @csv_path = csv_path
    @items = []
  end

  def create(csv_path = @csv_path)
    CSV.foreach(@csv_path, headers: true, header_converters: :symbol) do |row|
      @items << Item.new(row[:id], row[:name], row[:description], row[:unit_price], row[:merchant_id])
    end
  end

  def all
    @items
  end

end
