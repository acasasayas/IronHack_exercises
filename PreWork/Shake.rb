class MilkShake
  def initialize(name)
    @base_price = 3
    @ingredients = [ ]
    @name = name    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake = total_price_of_milkshake + ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
  end
end
class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price.to_i
  end
end


class ListShakes
	def initialize(name)
		@amount = 0
		@shakes = [ ]
	end

	def add_shake (shake,price)
		@shakes.push(shake)
		@amount += price
	end

	def checkout_list
		@shakes.each do |shake|
			puts @name
		end
		puts "Total ammount: #{@amount}"

	end

end
puts "Hello and Welcome to ShakeShake"
puts "Enter your name"
name_list = gets.chomp
list = ListShakes.new(name_list)

i = "y"
while i == "y"
	puts "Please enter name of new Shake"
	shake = MilkShake.new(gets.chomp)
	j = "y"
	while j != "n"
		puts "Enter name of ingredient"
		name_ingredient = gets.chomp
		puts "enter price of ingredient"
		price_ingredient = gets.chomp
		ingredient = Ingredient.new(name_ingredient,price_ingredient)
		shake.add_ingredient(ingredient)
		puts "Want more ingredients? Press 'n' to end milkshake"
		j = gets.chomp
	end
	totalprice = shake.price_of_milkshake
	list.add_shake(shake,totalprice)
	puts "Want to add more Shakes? Press 'y' to continue"
	i = gets.chomp
end
list.checkout_list
puts "Bye!"













