# merchant_collection = sales_engine.merchant_collection
# merchant = merchant_collection.find(34)
# # => <Merchant>
# merchants = merchant_collection.all
# # => [<Merchant>, <Merchant>...]

# need these methods
# all - returns an array of all known Merchant instances
# find() - returns either nil or an instance of Merchant with a matching ID


#  EXTRA methods for next steps:
#  create({name: 'Monster Merchant'}) - This should create a new instance of Merchant with a unique ID, and store it in our Merchant Collection.
#
# update({id: 34, name: 'New Merchant Name'}) - this should change the name of the Merchant instance to the given value.
#
# destroy(34) - This should remove the merchant with the given id from the Merchant Collection.
#UPDATE THE WHERE
# With this new implementation of where, you should be able to send a key/value pair into the method
# to return all items where the attribute(key) matches the value given.
#  sales_engine = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv"
# })
#
# merchant_collection = sales_engine.merchants
# item_collection = sales_engine.items
# all_pencils = item_collection.where({merchant_id: 34})
# # => [<Item>, <Item>, <Item>]
# all_pencils = item_collection.where({name: 'Pencil'})
# # => [<Item>, <Item>, <Item>]
# all_fifty_cent_items = item_collection.where({price: 50})
# # => [<Item>, <Item>, <Item>]
