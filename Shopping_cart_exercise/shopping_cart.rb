 $prices = {apple:10, orange:5, grapes:15, banana:20, watermelon:50}

 class Cart
 	def initialize
 		@shoppinglist = {}
 	end

 	def add (item)
 		@shoppinglist.push(item)
 	end
 	def show 
 		n=1
 		@shoppinglist.each do |object|
 			puts "#{n} #{object} #{$prices[item]}$"
 			n +=1 
 		end
 	end
 	def cost 

 		c = 0
 		@shoppinglist.each do |value|
 			c += $prices[value]
 		end
 		puts "TOTAL COST: #{c} $"
 	end
 end
 
 cart = Cart.new() 

 cart.add :apple
 cart.add :banana

puts cart.show

puts cart.cost

