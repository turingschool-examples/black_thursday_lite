class ItemCollection
 def initialize(argument)
   @argument = argument
 end

 def all
   #returns an array of all known `Item` instances
 end

 def where(merchant_id)
  #- returns either an empty array, or an array of all items with a merchant_id
  # matching the given argument.
 end
end
