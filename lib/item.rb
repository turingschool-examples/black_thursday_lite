require "csv"

class Item
  @@all = []

  def self.all
    @@all
  end

  def self.from_csv(file_path)
    csv = CSV.read("#{file_path}", headers: true, header_converters: :symbol)

    @@all = csv.map do |row|
      Item.new(row)
    end
  end

  def self.find(id)
    @@all.find do |item|
      item.id == id
    end
  end

  def self.where(merchant_id)
    @@all.find_all do |item|
      item.merchant_id == merchant_id
    end
  end

  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(item_params)
    @id = item_params[:id].to_i
    @name = item_params[:name]
    @description = item_params[:description]
    @unit_price = item_params[:unit_price].to_i
    @merchant_id = item_params[:merchant_id].to_i
  end
end
