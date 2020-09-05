require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
      if item[:item] == name
        return item
      end
  end
  nil
end

      [
        { :item => "DOG FOOD" },
        { :item => "WINE" },
        { :item => "STRYCHNINE" }
      ]

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |hashes|
    
  end
end


  