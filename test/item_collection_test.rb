require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/item_collection'

class ItemCollectionTest < Minitest::Test

  def setup
  end

  def test_it_exists
  end

  def test_it_can_return_array_of_all_known_items
  end

  def test_it_can_return_array_of_items_where_id_matches_argument
  end
end

### `ItemCollection`

The `ItemCollection` is responsible for holding and searching our `Item`
instances. This object represents one line of data from the file `items.csv`.

It offers the following methods:

*   `all` - returns an array of all known `Item` instances
*   `where(id)` - returns either an empty array, or an array of all items with a merchant_id matching the given argument.

It's initialized and used like this:

```ruby
sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv"
})

merchant_collection = sales_engine.merchants
item_collection = sales_engine.items
merchant = merchant_collection.find(34)
items = item_collection.where(merchant.id)
# => [<Item>, <Item>, ...., <Item>]
```
