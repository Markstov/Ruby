current_path = File.dirname(__FILE__)
require "#{current_path}/country.rb"

class Client_dt
	#attr_accessor @cl_name, @list_orders
	@cl_name
	@list_orders

	def initialize(name)
		@cl_name = name
		@list_orders = Array.new()
	end

	def new_order
		o=''
		puts('Choose country')
		cnt_lst=List_country.new()
		cnt_lst.read_from_file
		cnt_lst.show_cnt
		a = gets.to_i
		o+= cnt_lst.cnt_name(a) +' '
		puts('Choose city')
		cnt_lst.show_city(a)
		b = gets.to_i
		o+= cnt_lst.city_name(a,b) +' '
		print("You choosed - ",o)
		puts()
		@list_orders.push(o)
	end

	def show_orders
		puts("Your orders")
		for i in 0..@list_orders.length-1
			puts(@list_orders[i])
		end
		puts
	end

end
