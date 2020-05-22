# The ItemCollection is responsible for holding and searching our Item instances. This object represents one line of data from the file items.csv.

class ItemCollection

  def initialize(item_instances)
  end

  def all
    # returns an array of all known Item instances
  end

  def where(merchant_id)
    # returns either an empty array, or an array of all items with a merchant_id matching the given argument.
  end

end
