require './lib/merchant'
require 'csv'

class MerchantCollection
  attr_reader :merchants_filepath
  attr_accessor :all_merchants

  def initialize(merchants_filepath)
    @merchants_filepath = merchants_filepath
    @all_merchants = []
  end

  def all
    CSV.foreach(@merchants_filepath, :headers => true) do |row|
      @all_merchants << Merchant.new({:id => row.field("id").to_i, :name => row.field("name")})
    end
    @all_merchants
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

  def create(info)
    valid = 0
    rand_id = rand(10000000)
    CSV.foreach(@merchants_filepath, :headers => true) do |row|
      if row.field("id").to_i == rand_id
        valid += 1
      end
    end
    while valid == 1
      rand_id = rand(100000)
      CSV.foreach(@merchants_filepath, :headers => true) do |row|
        if row.field("id").to_i != rand_id
          valid += 1
        end
      end
    end
    merchant = Merchant.new({:id => rand_id, :name => info[:name]})
    @all_merchants << merchant
    merchant
    #are we trying to store it in the csv file or the all_merchants array?
    # CSV.open(merchants_filepath, "a") do |csv|
    # end
  end

end
