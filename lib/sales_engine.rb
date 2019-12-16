class SalesEngine
 attr_reader :sales_data

 def initialize(argument)
   @argument = argument
 end

 def self.from_csv(sales_data)
   # @sales_data = sales_data
   require "pry"; binding.pry
   self.new(sales_data)
 end

end
