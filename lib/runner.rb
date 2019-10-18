

  this_sales_engine = SalesEngine.new()

  #create the merchant collection
    merchant_collection = sales_engine.merchants
  #create the items collection
    item_collection = sales_engine.items

  #be able to traverse our new collections 
    merchant = merchant_collection.find(34)
    items = item_collection.where(merchant.id)
