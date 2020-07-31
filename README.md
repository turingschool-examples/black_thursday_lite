## Black Thursday Lite

**Context:** Working with understanding the underlying functionality behind an ORM for the first time.
[**My Process / Documentation Gist**](https://gist.github.com/gabichuelas/7283630a2643a787569620faaafd142b)

Project Overview
-----------------
A business is only as smart as its data. Let's build a system to manage our data and execute business intelligence queries against the data from a typical e-commerce business.

### Learning Goals

*   Use tests to drive both the design and implementation of code
*   Decompose a large application into components
*   Design a solution that is functional, readable, maintainable, and testable

### Key Concepts

From a technical perspective, this project will emphasize:

*   CSV I/O
*   Database Operations
*   Encapsulating Responsibilities

## Building Your SalesEngine / Project Specs + Direction

### Data Access Layer (DAL) and Object Relational Mapping (ORM)

The idea of a *DAL* is to write classes which load and parse your raw data, allowing your system to then interact with rich ruby objects to do more complex analysis.

In many applications, including the Rails projects you will build in Module 2, the DAL is incorporated in an ORM that works with a database to load and parse data into rich ruby objects.

In this exercise, we'll build the beginnings of a DAL with some ORM-like functionality by building the classes described below:

In order to interact with our DAL, let's tie everything together with one common root, a `SalesEngine` instance:

```ruby
sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})
```

From there we can find the child instances:

*   `item_collection` returns an array of all items (This method will probably (definitely) end up referencing an instance of `ItemCollection`)
*   `merchant_collection` returns an array of all merchants (This method will probably (definitely) end up referencing an instance of `MerchantCollection`)


### `Merchant`

The merchant is one of the critical concepts in our data hierarchy.

*   `id` - returns the integer id of the merchant
*   `name` - returns the name of the merchant

We create an instance like this:

```ruby
merchant = Merchant.new({:id => 5, :name => "Turing School"})
```

### `MerchantCollection`

The `MerchantCollection` is responsible for holding and searching our `Merchant`
instances. It offers the following methods:

*   `all` - returns an array of all known `Merchant` instances
*   `find()` - returns either `nil` or an instance of `Merchant` with a matching ID

The data can be found in `data/merchants.csv` so the instance is created and used like this:

```ruby
sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})

merchant_collection = sales_engine.merchant_collection
merchant = merchant_collection.find(34)
# => <Merchant>
merchants = merchant_collection.all
# => [<Merchant>, <Merchant>...]
```

### `Item`

The Item instance offers the following methods:

*   `id` - returns the integer id of the item
*   `name` - returns the name of the item
*   `description` - returns the description of the item
*   `unit_price` - returns the price of the item
*   `merchant_id` - returns the integer merchant id of the item

We create an instance like this:

```ruby
item = Item.new({
  :id          => 1,
  :name        => "Pencil",
  :description => "You can use it to write things",
  :unit_price  => 1099,
  :merchant_id => 2
})
```

### `ItemCollection`

The `ItemCollection` is responsible for holding and searching our `Item`
instances. This object represents one line of data from the file `items.csv`.

It offers the following methods:

*   `all` - returns an array of all known `Item` instances
*   `where(merchant_id)` - returns either an empty array, or an array of all items with a merchant_id matching the given argument.

It's initialized and used like this:

```ruby
sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv"
})

merchant_collection = sales_engine.merchants
item_collection = sales_engine.item_collection
merchant = merchant_collection.find(34)
items = item_collection.where(merchant.id)
# => [<Item>, <Item>, ...., <Item>]
```

### Creating, Updating, and Destroying objects

Up to this point, we have only asked for information, but in the real world, we would not only need to `Read` information from our database, but also `Create`, `Update`, and `Destroy` records.  Put together, these 4 actions (CRUD) constitute everything you might need to do to a record in a database.  Let's practice these concepts by updating our `MerchantCollection` class to respond to the following methods:

* `create({name: 'Monster Merchant'})` - This should create a new instance of Merchant with a unique ID, and store it in our Merchant Collection.

* `update({id: 34, name: 'New Merchant Name'})` - this should change the name of the Merchant instance to the given value.

* `destroy(34)` - This should remove the merchant with the given id from the Merchant Collection.

### Increasing Our Search Capabilities

Now that you can search for a merchant by id, and search for items by merchant id, let's change our Item's `where` method to satisfy the following interaction pattern:

```ruby
sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv"
})

merchant_collection = sales_engine.merchants
item_collection = sales_engine.items
all_pencils = item_collection.where({merchant_id: 34})
# => [<Item>, <Item>, <Item>]
all_pencils = item_collection.where({name: 'Pencil'})
# => [<Item>, <Item>, <Item>]
all_fifty_cent_items = item_collection.where({price: 50})
# => [<Item>, <Item>, <Item>]
```

With this new implementation of `where`, you should be able to send a key/value pair into the method to return all items where the attribute(key) matches the value given.
