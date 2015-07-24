module Enumerable


	def my_each
		if !block_given?
			return self
		else
			for i in self
				yield(i)
			end
		end
	end

	def my_each_with_index
		if !block_given?
			return self
		else
			for i in self
				yield(i,self.index(i))
			end
		end
	end

	def my_select
		arr = []
		for i in self
			if yield(i)
				arr.push(i)
			end
		end
		return arr
	end
end
puts [1,2,3,4,5].my_select { |num|  num.even?  } 