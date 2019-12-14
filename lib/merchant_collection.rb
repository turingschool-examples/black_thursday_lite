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

  def find()
  end

end
