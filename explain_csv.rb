# Merchant.first
# # => merchant object
#
# Merchant.first.items
# # => collection of item obj
#
# item.merchant
# merchant.item
#
# ORM
# User.all # map through all of the user instances
#
# class ItemCollection
#   def initialize(csv_data)
#     @csv_data
#     @items = []
#   end
#
#   def items_for_merchant(merchant)
#     items.find_all()do
#       #match with criteria
#     end
#   end
# end
#
# UserCollection
#
# def referred_by_current_student
#   #iterate through our array of user objects and find_all that match a certain criteria
# end
#
# def from_csv (arg)
#
#   ## kinda like this below
#   def load_data  ### same as User.all
#     @csv_data.each do |row|
#       @items << Item.new(row_data)
#     end
#   end
# custom method that we are building !!!!
