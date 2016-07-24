require('pry-byebug')

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, value)
  return pet_shop[:admin][:total_cash] += value
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold] 
end

def increase_pets_sold(pet_shop, value)
  return pet_shop[:admin][:pets_sold] += value
end

def stock_count(pet_shop)
  return pet_shop[:pets].size
end

def pets_by_breed(pet_shop, breed)
  new_array = []
  pets = pet_shop[:pets]
    for pet in pets
    new_array << pet if breed == pet[:breed]
    end
    return new_array
end

def find_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
      if name == pet[:name]
        return name = pet
      end 
    end
    name = nil  
end

def remove_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
      if name == pet[:name]
       pet.delete(:name)
      end 
    end
end

def add_pet_to_stock(pet_shop, add_to_stock)
  add_to_stock = @new_pet
  pet_shop[:pets].push(add_to_stock)
  return pet_shop[:pets].size
end

def customer_pet_count(customer)
  return customer[:pets].size
end

 def add_pet_to_customer(customer, new_pet)
   new_pet = @new_pet
   return customer[:pets] << (new_pet).size
 end

def customer_can_afford_pet(customer, new_pet)
  new_pet = new_pet[:price]
  return buy_pet = false if customer[:cash] < new_pet
  buy_pet = true
end

def sell_pet_to_customer(customer, pet_shop, admin)
   customer = @customer
   pet_shop = @pet_shop[:pets]
   admin = @pet_shop[:admin]

#  if 
#   find_pet_by_name == true and customer_can_afford_pet == true
#   customer[:pets] += 1 
#   admin[:pets_sold] += 1
#   admin[:total_cash] += pet_shop[:price]
#  else
#   return nil
#  end

# end



