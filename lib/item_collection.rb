class Itemcollection

  attr_reader :items

  def initialize(csv_file_path)
    @items = all(csv_file_path)
  end

  def create_items(csv_path)
    csv = CSV.read("#{csv_file_path}", headers: true, header_converters: :symbols)

    csv.map do |row|
      Item.new(row)
    end
  end

  def find(id)
    @items.find do |item|
      item.id == id
    end
  end

  def where(merchant_id)
    @tems.find_all do |item|
      item.merchant_id == merchant_id
    end
  end

end
