def bubble_sort(arr)
	if arr.empty?
		puts "Please enter array seperated by commas :"
		arr = gets.chomp.split(',')
	end
	swap_count = 0											#Number of times two numbers are compared
	iteration = 0											#number of times we went through comparing each elemnent in the array
	arr_len = arr.length									#Arry length
	while(arr_len>1)
		for i in 0..arr_len
			if arr[i+1].nil?
				break
			elsif arr[i]>arr[i+1] && !block_given? 			#if a>b swap them and increase counter by 
				arr[i],arr[i+1]=arr[i+1],arr[i]
				swap_count +=1
			elsif block_given? 								# if block is given check if right var is larger
				if yield(arr[i+1],arr[i]) > 0
					arr[i],arr[i+1]=arr[i+1],arr[i]
					swap_count +=1
				end
			end
		end
		iteration +=1										#increment interation
		if swap_count==0									#if arrays is already sorted, swap_count will be 0, so break
			break
		end
		arr_len -= 1										#reduce length of interation by one as last number is at its sortd position
	end
	puts "It took #{iteration} iterstions for the sort"
	return arr
end
