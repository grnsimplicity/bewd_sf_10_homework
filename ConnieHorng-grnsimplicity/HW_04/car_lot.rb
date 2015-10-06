#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, is_electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car|
<<<<<<< HEAD
    puts "The brand is #{car[:brand]}. The model is #{car[:model]}."
    puts "***** This car is great for earth *****" unless car[:is_electric]==false
    ## puts "*** This car is great for earth" if car[:is_electric] == true,
=======
    puts "This is a #{car[:brand]}. The Model is #{car[:model]}"
    puts "***** This car is great for earth ****" if car[:is_electric] == true
>>>>>>> c81e4dbff69ea6ccec2c9a0c93cea338e4f846f6
  end
end

#write a method that accepts an unlimited number of cars (or arguments)
<<<<<<< HEAD
def add_cars(*all_cars) # the "*" means an unlimited number of arguments, whereas previous method
  #only one thing
  binding.pry
  all_cars
end

#create hashes
tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
ford = {brand: "Ford", model: "Ford Focus Electric", year: 2015, price: 32000, is_electric: true}
nissan = {brand: "Nissan", model: "Nissan Leaf", year: 2013, price: 29000, is_electric: true}
chrysler = {brand: "Chrysler", model: "Fiat", year: 2010, price: 18000, is_electric: false}
audi = {brand: "Audi", model: "S5", year: 2015, price: 35000, is_electric: false}
bmw = {brand: "BMW", model: "i3", year: 2015, price: 38000, is_electric: true}

#Approach 1 - straightforward "simple"
#create an array with the cars, can also create cars=array.new
#cars = []
#cars.push(tesla, ford, nissan, chrysler, audi, bmw) #note these are variables not strings
#show_all_cars(cars)

#Approach 2 - using the bonus method more dynamic
cars = add_cars(tesla, ford, nissan, chrysler, audi, bmw)
=======
def add_cars(*all_cars)
  all_cars
end

tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
ford = {brand: "Ford", model: "Escape", year: 2015, price: 17000, is_electric: false }
porshe = {brand: "Porshe", model: "Speedter", year: 1955, price: 250000, is_electric: false }
deloraen = {brand: "AMC", model: "Delorean", year: 1980, price: 50000, is_electric: false }
toyota = {brand: "Toyota", model: "Prius", year: 2016, price: 49000, is_electric: true }

#APPROACH - A
# cars = []
# cars.push(tesla, ford, porshe, deloraen, toyota)
# show_all_cars(cars)

#APPROACH - B
cars = add_cars(tesla, ford, porshe, deloraen, toyota)
>>>>>>> c81e4dbff69ea6ccec2c9a0c93cea338e4f846f6
show_all_cars(cars)
