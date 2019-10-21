require 'csv'

class Merchant
  attr_reader :id, :name, :merchants
  @@merchants = []

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.create_multiple_items(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      @@merchants << Merchant.new(row['id'], row['name'])
    end
    @@merchants
  end

  def self.all
    @@merchants
  end

  def self.find(merchant_id)
    @@merchants.find { |merchant| merchant.id == merchant_id.to_s }
  end

end
