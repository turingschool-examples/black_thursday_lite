def SalesEngine
  attr_reader :items, :merchants

  def initialize
    @items = items
    @merchants = merchants
  end

  def self.from_csv(path_info)
    merchants_list = MerchantCollection.new(generate_merchant_collection(path_info)
    items_list = ItemnCollection.new(generate_merchant_collection(path_info)
  end

  # def generate_merchant_collection(file_path)
  #   merchant_array = []
  #   CSV.foreach(file_path, headers: :first_row) do |row|
  #     merchant_array << Merchant.new(row)
  #   end
  #   merchant_array
  # end
  #
  # def generate_item_collection(file_path)
  #   item_array = []
  #   CSV.foreach(file_path, headers: :first_row) do |row|
  #     item_array << Item.new(row)
  #   end
  #   item_array
  # end

end
