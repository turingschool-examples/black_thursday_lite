require './lib/sales_engine'

class ItemCollection

def initialize

end

# `all` - returns an array of all known `Item` instances
# `where(merchant_id)` - returns either an empty array, or an array of all items with a merchant_id matching the given argument.

def all

end

def where(merchant_id)

end


end

#The `ItemCollection` is responsible for holding and searching our `Item`
#instances. This object represents one line of data from the file `items.csv`.

# ```ruby
# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv"
# })
