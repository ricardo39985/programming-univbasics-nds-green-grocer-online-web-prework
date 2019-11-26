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
  results = []
for i in cart
  coupon_counter = 0
  first_hash = {}
  w_coupon_hash = {}
  while coupon_counter < coupons.length
    if i[:item] == coupons[coupon_counter][:item]
      first_hash[:item] = i[:item]
      first_hash[:price] = i[:price]
      first_hash[:clearance] = true
      first_hash[:count] = i[:price].to_f % coupons[coupon_counter][:num].to_f

    else
      first_hash[:item] = i[:item]
      first_hash[:price] = i[:price]
      first_hash[:clearance] = false
      first_hash[:count] = i[:count]
    end
    if i[:item] == coupons[coupon_counter][:item]
    w_coupon_hash[:item] = i[:item] + " W/COUPON"
      w_coupon_hash[:price] = coupons[coupon_counter][:cost].to_f / coupons[coupon_counter][:num].to_f
      w_coupon_hash[:clearance] = true
      w_coupon_hash[:count] = i[:count] -(i[:count] % coupons[coupon_counter][:num])
    end
    results.push(first_hash)
    results.push(w_coupon_hash)
    coupon_counter +=1
  end
end
results
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
