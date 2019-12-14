class SalesEngine

  def initialize(atts)
    @items_filepath = atts[:items]
    @merchants_filepath = atts[:merchants]
    # require "pry"; binding.pry
  end

  def self.from_csv(atts)
    self.new(atts)
    # require "pry"; binding.pry
  end

  def items #set this instead of attr_reader because we will have to use the filepath
    #to return an actuall array of some data type of items
    @items_filepath #need to convert a filepath to an array of items utilizing an items collection

  end

  def merchants
    @merchants_filepath
  end


end
# ruby csv doc files: a bunch of methods to learn how to parse the data
#can't do anything with the data until you do something with it.
# methods like open and read. will have some foreach, (for each line of this, make it equal to ...)
# mod_1 backend, go to additional exercises: the name is maybe event_planner
