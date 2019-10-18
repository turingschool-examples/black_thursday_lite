require 'csv'
require './lib/salesengine'

def MerchantCollection
attr_reader :id, :name, :created_at, :updated_at

def initialize(id, name, created_at, updated_at)
  @id = id
  @name = name
  @created_at = created_at
  @updated_at = updated_at
end

  def self.from_csv(data)
    merchant = new
    row = CSV.foreach(data)
    [:id, :name, :created_at, :updated_at].each_with_index do |name, i|
      merchant.all(merchant)
    end
    merchant
  end
end
