# your code goes here
def begins_with_r(array)
	flag = true
	array.each do |element|
		if element[0] != 'r'
			flag = false
		end
	end
	flag
end

def contain_a(array)
	contain =[]

	array.each do |element|
		if element.include?('a')
			contain<<element
		end
	end

	contain
end

def first_wa(array)
	first = nil

	array.each do |element|
		if element.match(/wa/)
			first=element
			break
		end
	end

	first
end

def remove_non_strings(array)
	contain =[]

	array.each do |element|
		if element.is_a?(String)
			contain<<element
		end
	end

	contain

end

def count_elements(array)
	array.each do |hash_count|
		hash_count[:count]=0
		name = hash_count[:name]
		array.each do |hash|
			if hash[:name] == name
				hash_count[:count]+=1
			end
		end
	end.uniq

end

def merge_data(keys, values)
	contain =[]

	keys.each do |person_name|
		name = person_name[:first_name]
		values.each do |person_data|
			if person_data[name]
				merged_person = person_data[name]
				merged_person[:first_name] = name
				contain << merged_person
			end
		end
	end
	contain
end

def find_cool(array)
	contain = []
	array.each do |element|
		contain << element if element[:temperature] == "cool"
	end

	contain
end

def organize_schools(schools)
	organize_schools ={}

	schools.each do |name, location_hash|
		location = location_hash[:location]
		if organize_schools[location]
			organize_schools[location] << name
		else
			organize_schools[location] = []
			organize_schools[location] << name
		end
	end

	organize_schools
end