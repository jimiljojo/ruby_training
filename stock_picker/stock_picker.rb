def stock_picker(stock_prices)
	max_profit = -1.0/0.0				# -ve infinity
	buy_day = 0
	sell_day = 1
	best_dates =[0,1]
	stock_prices.each_with_index do |price,i|			#iterating through prices with index i
		buy_day = i
		for j in i...(stock_prices.length) do			#iterating through i+1 to end of array
			sell_day = j
			if (stock_prices[sell_day]-stock_prices[buy_day])>max_profit		#Trying to find max profit
				max_profit = stock_prices[sell_day]-stock_prices[buy_day]
				best_dates = [buy_day+1,sell_day+1]					#setting bestdates on indexes that get best profit
	
			end
		end
	end
	return best_dates
end
puts "Enter stock prices on imaginary days sepereated by a comma :"
stock_prices = gets.chomp.split(',').map do |unit| unit.to_i end
best_dates = stock_picker(stock_prices)
puts "Besy Buy Day : #{best_dates[0]} \nBest Sell Day : #{best_dates[1]}\n Note that days start from 1 !"

