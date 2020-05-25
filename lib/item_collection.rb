class ItemCollection
  attr_reader :item_csv_data,
              :items

  def initialize(item_csv_data)
    @item_csv_data = "./data/items.csv"
    @items = []
  end

  def all
    CSV.foreach(@item_csv_data, headers: true, header_converters: :symbol) do |row|
      specific_item_attributes = {
        :id => row[:id].to_i,
        :name => row[:name],
        :description => row[:description],
        :unit_price => row[:unit_price].to_i,
        :merchant_id => row[:merchant_id].to_i,
        :created_at => row[:created_at],
        :updated_at => row[:updated_at]
      }

      @items << Item.new(specific_item_attributes)
    end
    @items
  end

  def where(merchant_id)
    @items.find_all do |item|
      merchant_id == item.merchant_id
    end 
  end

  # def find(item_id)
  #   @items.find do |item|
  #     if item_id == item.id
  #       return item
  #     else
  #       return nil
  #     end
  #   end
  # end
end
