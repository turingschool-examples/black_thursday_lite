require 'csv'

class SalesEngine
  attr_accessor :items, :merchants

  def initialize
    @items = []
    @merchants = []
  end

  def self.from_csv(data_paths)
  @items = CSV.parse(File.read(data_paths[:items]))
  @merchants = CSV.parse(File.read(data_paths[:merchants]))
  end

end
