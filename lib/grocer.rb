require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    return item if item[:item] == name
  end
  nil
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |hashes|
    
  end
end


  