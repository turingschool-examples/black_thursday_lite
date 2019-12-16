class Itemcollection
  attr_reader :items

  def initialize(csv_file_path)
    @items = all(csv_file_path)
  end

  def all(csv_file_path)
    item_array = []
      CSV.foreach("#{csv_file_path}", headers: true, header_converters: :symbol) do |row|
        item_array << Item.new(row)
      end
    item_array
  end

  def where(id)
    @items.find_all do |item|
      require "pry"; binding.pry
      item.id == id
    end
  end
  # all_pencils = item_collection.where({merchant_id: 34})
# => [<Item>, <Item>, <Item>]
end
