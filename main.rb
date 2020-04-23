current_path = File.dirname(__FILE__)
require "#{current_path}/client.rb"

	puts "Welcome!"
	puts "write your name please:"
	nm = gets
	person = Client_dt.new(nm)
	x = 1
	while x!=0 do
			puts "What do you want?"
			puts "1. Choose a tour"
			puts "2. View orders"
			puts "0. Finish"
			x = gets.to_i
			if x == 1 then 
				person.new_order
			end
			if x == 2 then 
				person.show_orders
			end
	end