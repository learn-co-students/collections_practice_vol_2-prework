require 'pry'
def begins_with_r (array)
	array.all? { |word| word.start_with?("r")}
end

def contain_a (array)
	array.select { |word| word.include?("a") }
end

def first_wa(array) 
	array.each { |word| 
		if word[0..1].downcase == "wa"
			return word
		end
	}
end

def remove_non_strings(array)
	array.select { |item| item.class == String}
end

def count_elements(array)
	count = Hash.new(0)
	new_array = []
	new_hash = {}
	array.each { |item| count[item] += 1}
	count.each {|key, value| 
		new_hash = key
		new_hash[:count] = value
		new_array << new_hash
	}
	new_array
end

def merge_data (keys, values)
	keys.each { |names|
		values.each {|stats| 
			names.merge!(stats[names[:first_name]])
		}
	}
end

def find_cool(hash)
	hash.each { |item|
		if item[:temperature] == "cool"
			return [item]
		end
	}
end	

def organize_schools(schools)
	schools_hash = {}
	schools.each { |name, location|
		location.each { |key, value|
			if schools_hash[value] == nil
				schools_hash[value] = [name]
			else
				schools_hash[value] << name
			end
		}
	}
	schools_hash
	
end