require "pry"
require 'csv'



class SalesEngine

  def initialize(data)
    items = data[:items]
    merchants = data[:merchants]
  end




  def self.from_csv(data)
    items = data[:items]
    merchants = data[:merchants]
  end

end
