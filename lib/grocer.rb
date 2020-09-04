require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |hashes|
    hashes.each do |item, item_name|
      if item_name == name
        return hashes
      end
    end
  end
  nil
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |hashes|
    
  end
end


  