require 'csv'

class SalesEngine
  attr_reader :itempath, :merchantpath
  def initialize(args)
    @itempath = args[:items]
    @merchantpath = args[:merchants]
  end

  def self.from_csv(args)
    SalesEngine.new(args)
  end

end
