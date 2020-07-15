require 'pry'
def begins_with_r(array)

array.all? do |element|
	 element[0] == "r"
	
end
end


def contain_a(array)
array.select do |element|
	element.include?("a")
end
end
# your code goes here
def first_wa(array)
array.find do |element|
	element[0] =="w" && element[1] =="a"
end
end


def remove_non_strings(array)

array.reject { |item| item.class != String}
#binding.pry
	
	

#binding.pry
	end
	 def count_elements(array)
	 	count1 = 1
	 	count2 = 0
array.uniq.each do |uniq_item|
	#binding.pry

array.each do |one_or_more|
	#binding.pry
	if one_or_more == uniq_item
		count1 
		uniq_item[:count] = count1 
	else
	 count2 += 1
	#binding.pry

	uniq_item[:count] = count2

end
end
#binding.pry
end
end
def merge_data(keys, data)
keys.each do |person|
	#binding.pry
	data.each do |details|
	#	binding.pry
		person.merge!(details[person[:first_name]])
	end
end
end
def find_cool(array)
coolest_one = []
array.select do |coolness|
	if coolness[:temperature] == "cool"


	return coolest_one << coolness

end
#binding.pry

end
coolest_one

	end

	def organize_schools(array)
school_location = {}
array.each do |school_names, data|
	binding.pry
	data.each do |key, city|
		binding.pry
		 if school_location[city] == nil
		 	school_location[city] = [school_names]
		 else
		 school_location[city] << school_names
		end
end
end
school_location
end













