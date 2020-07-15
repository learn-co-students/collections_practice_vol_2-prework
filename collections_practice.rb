# your code goes here
require "pry"

def begins_with_r(array)
	array.all? { |r| r.start_with?("r") }
end

def contain_a(array)
	array.select { |a| a.include?("a") }
end

def first_wa(array)
	array.each do |wa|
		if wa.to_s.start_with?("wa")
			return wa
		end
	end
end

def remove_non_strings(array)
	array.select { |string| string.class == String}
end

def count_elements(array)
	array.each do |element|
	element[:count] = 0
	array.each do |hash|
		if hash[:name] == element[:name]
			element[:count] += 1
		end
	end
	end.uniq
end

def merge_data(key, data)
	i = 0
	while i < key.length
		data.each do |element|
			element.each do |k, v|
				if key[i].has_value?(k)
					key[i].merge!(v)
				end
			end
		end
	i += 1
	end	
	return key
end

def find_cool(array)
	cool_hashes = []
	array.each do |element|
		if element[:temperature] == "cool"
			cool_hashes << element
		end
	end
	return cool_hashes
end

def organize_schools(hash)
	new_hash = {}
	hash.each do |school, location|
		string = location[:location]
		if new_hash[string]
			new_hash[string] << school
		else new_hash[string] =[]
			new_hash[string] << school
		end
	end
	return new_hash
end


