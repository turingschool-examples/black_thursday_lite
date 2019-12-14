require './lib/merchant'
require 'csv'

class MerchantCollection
  attr_reader :merchants_filepath

  def initialize(merchants_filepath)
    @merchants_filepath = merchants_filepath
  end

  def all
    all_merchants = []
    CSV.foreach(@merchants_filepath, :headers => true) do |row|
      all_merchants << Merchant.new({:id => row.field("id").to_i, :name => row.field("name")})
    end
    all_merchants
  end

  def find(id)
    matching_merchants = nil
    CSV.foreach(@merchants_filepath, :headers => true) do |row|
      if row.field("id").to_i == id
        matching_merchants = []
        matching_merchants << Merchant.new({:id => row.field("id").to_i, :name => row.field("name")})
      end
    end
    matching_merchants
  end

end
