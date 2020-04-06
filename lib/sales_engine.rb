require 'csv'

class SalesEngine
  attr_reader :merchants_file,
              :items_file

  def initialize(files)
    @merchants_file = files[:merchants]
    @items_file = files[:items]
  end

  def self.from_csv(files)
    new(files)
  end
end
