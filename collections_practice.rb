require "pry"

def begins_with_r(array)
	begins = true
	array.each do |string|
		if string[0].upcase != "R"
			begins = false
		end
	end
	begins
end

def contain_a(array)
	array.select do |item|
		item.include?("a")
	end
end

def first_wa(array)
	array.find do |word|
		word[0..1] == "wa"
	end
end

def remove_non_strings(array)
	array.select do |item|
		item == item.to_s
	end
end

def count_elements(array)
	new = array.uniq.each do |item|
		item[:count] = 0
	end
	array.each do |item|
		new.each do |new_item|
			if new_item[:name] == item[:name]
				new_item[:count] += 1
			end
		end
	end
	new
end

def merge_data(keys, data)
	keys.collect do |person|
		new_data = nil
		person.each do |name_hash, name|
			data.each do |info|
				new_data = info[name]
			end
		end
		person.merge(new_data)
	end
end

def find_cool(array)
	new = []
	array.each do |person_hash|
		person_hash.each do |stat, value|
			if value == "cool"
				new << person_hash
			end
		end
	end
	new
end

def organize_schools(hash)
	new = {}
	hash.each do |school, info|
		if new[info[:location]] == nil
			new[info[:location]] = []
		end
		new[info[:location]] << school
	end
	new
end