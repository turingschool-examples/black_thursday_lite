# It's initialized and used like this:
# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv"
# })
#
# merchant_collection = sales_engine.merchants
# item_collection = sales_engine.item_collection
# merchant = merchant_collection.find(34)
# items = item_collection.where(merchant.id)
# # => [<Item>, <Item>, ...., <Item>]
#
# It offers the following methods:
#
# all - returns an array of all known Item instances

# where(merchant_id) - returns either an empty array, or an array
 # of all items with a merchant_id matching the given argument
