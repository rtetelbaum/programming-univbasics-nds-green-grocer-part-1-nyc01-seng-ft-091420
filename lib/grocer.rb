require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    return item if item[:item] == name
  end
  nil
end

    [
      {:item => "AVOCADO", :price => 3.00, :clearance => true},
      {:item => "KALE", :price => 3.00, :clearance => false},
      {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
      {:item => "ALMONDS", :price => 9.00, :clearance => false},
      {:item => "TEMPEH", :price => 3.00, :clearance => true},
      {:item => "CHEESE", :price => 6.50, :clearance => false},
      {:item => "BEER", :price => 13.00, :clearance => false},
      {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
      {:item => "BEETS", :price => 2.50, :clearance => false},
      {:item => "SOY MILK", :price => 4.50, :clearance => true}
    ]

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |item|
    if !find_item_by_name_in_collection(item, consolidated_cart)
      consolidated_cart << item
      consolidated_cart.each do |consolidated_item|
        consolidated_item[:count] = 1 if consolidated_item[:item] == item[:item]
      end
    elsif find_item_by_name_in_collection(item, consolidated_cart)
      consolidated_cart.each do |consolidated_item|
        consolidated_item[:count] += 1 if consolidated_item[:item] == item[:item]
      end
    end
  end
  consolidated_cart
end


  