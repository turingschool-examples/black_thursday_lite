require 'csv'

class Merchant

attr_reader :id, :name, :merchants
@@merchants = []

  def initialize(attributes)
      @id = attributes[:id]
      @name = attributes[:name]
      # @merchants = [] is a class variable
  end

  def self.method(id, name) #I dont think these arguments are right. Dont know which is the best method create/generate
    # need to iterate over the csv files each do |row|
      @@merchants.push Merchant.new(row[:id], row[:name])
    #return @@merchants
  end

  def self.all
    @@merchants
  end

  def self.find(merchant_id)
    # have no idea. maybe iterate over the class variable to find
  end
end
