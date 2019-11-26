def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  result = {}
  for i in collection do
    if i[:item] == name
      result[:item]= name
    end
  end
  if result[:item] ==name
    return result
  else
    return nil
  end
  pp name
  pp collection
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  stage_one= []
  counter_array = {}
  result = []
  for i in cart
    stage_one.push(i[:item])
  end
  stage_two = stage_one.uniq
  c= 0
  for i in stage_two
    counter_array[:item]= stage_two[c]
    counter_array[:count] = stage_one.count stage_two[c]
    result[c] = counter_array
    c +=1
  end
  result
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  pp cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
