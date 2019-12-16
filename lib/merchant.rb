class Merchant

  def initialize(info_hash)
    @id = info_hash[:id]
    @name = info_hash[:name]
  end
end







# The merchant is one of the critical concepts in our data hierarchy.
#
# id - returns the integer id of the merchant
# name - returns the name of the merchant
# We create an instance like this:
#
# merchant = Merchant.new({:id => 5, :name => "Turing School"})
