class List_country
	@list_cities
	@list_countries

	def read_from_file
		@list_countries =[]
		@list_cities = Array.new() { Array.new() }
		fh = File.open('test.txt')
				
		chk = 0
		i=0	
		narr =[]
		while (line = fh.gets) 
				if (chk==0) then
					@list_countries[i]=line.chomp
					chk=1
				else
					if(line.chomp!='') then
						narr.push(line.chomp)
					else
						@list_cities[i] = narr
						chk=0
						i+=1
						narr =[]
					end
				end	  
		end
		@list_cities[i]=narr
	end

	def show_cnt
		for i in 0..@list_countries.length-1
			print(i+1,'. ',@list_countries[i])
			puts
		end
	end

	def show_city(ind)
		for i in 0..@list_cities[ind-1].length-1
			print(i+1,'. ',@list_cities[ind-1][i])
			puts
		end
	end

	def cnt_name(i)
		return @list_countries[i-1]
	end

	def city_name(i,j)
		return @list_cities[i-1][j-1]
	end
end
