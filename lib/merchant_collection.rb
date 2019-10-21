require 'csv'
#require_relative
require_relative 'sales_engine'

class MerchantCollection
  def initialize(path)
    @path = path
    @all = Array.new
  end

  def all
    CSV.foreach(@path) do |row|
      @all << row
    end
    @all
  end
end