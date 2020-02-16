require "./lib/merchant"
require "csv"

class MerchantCollection
  attr_reader :file_path, :merchants

  def initialize(file_path)
    @file_path = file_path
    @merchants = []
  end

  def instantiate_merchant(input)
    Merchant.new(input)
  end

  def collect_merchant(merchant)
    @merchants << merchant
  end

  def create_merchant_collection
    CSV.foreach(@file_path, headers:true, header_converters: :symbol) do |row|
      collect_merchant(instantiate_merchant(row))
    end
  end

  def find(id)
    @merchants.find { |merchant| merchant.id == id.to_s }
  end

  def all
    @merchants
  end

  def latest_id
    all.max_by{|merchant| merchant.id.to_i}.id
  end

  def unique_id
    (latest_id.to_i + 1).to_s
  end

  def new(info)
    info[:id] = unique_id
    merchant = instantiate_merchant(info)
    collect_merchant(merchant)
    merchant
  end

  def update(info)
    find(info[:id]).name = info[:name]
  end

  def destroy(id)
    @merchants.delete(find(id.to_i))
  end


end
