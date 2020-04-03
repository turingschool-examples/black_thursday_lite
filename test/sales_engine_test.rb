# sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })
#
# From there we can find the child instances:

# item_collection returns an array of all items (This method will probably
#   (definitely) end up referencing an instance of ItemCollection)
#
# merchant_collection returns an array of all merchants (This method
#   will probably (definitely) end up referencing an instance of
#   MerchantCollection)
