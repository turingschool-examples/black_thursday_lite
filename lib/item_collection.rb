require "csv"
class ItemCollection
  attr_reader :file_path, :items

  def initialize(file_path)
    @file_path = file_path
    @items = []
  end

  def instantiate_item(info)
    Item.new(info)
  end

  def collect_item(item)
    @items << item
  end

  def create_item_collection
    CSV.foreach(@file_path, headers:true, header_converters: :symbol) do |row|
      collect_item(instantiate_item(row))
    end
  end
end
