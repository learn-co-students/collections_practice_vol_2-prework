def begins_with_r(tools)
	tools.each { |tool| return false if !tool.start_with?("r")}
	true
end 

def contain_a(array)
	array.select { |e| e.include?("a") }
end 

def first_wa(array)
	array.find { |e| e.is_a?(String) && e.start_with?("wa") }
end 

def remove_non_strings(array) 
	array.select { |e| e.is_a?(String)}
end 

def count_elements(array)
	hashTable = Hash.new(0) 
	array.each { |elem| hashTable[elem] += 1 } 
	output = []
	hashTable.each do |hash, occ| 
		hash[:count] = occ 
		output << hash
	end 
	output 
end 

def merge_data(keys, data)
	i = 0 
	newData = []
	data.each do |elem|
		elem.each { |key, value| newData << value }
	end 

	while i < keys.length 
		keys[i].merge!(newData[i])
		i += 1 
	end 
	keys
end 

def find_cool(array)
	cools = []
	array.each do |elem| 
		cools << elem if elem[:temperature] == "cool" 
	end 
	cools
end 

def organize_schools(schools)
	organizedSchools = Hash.new(0)
	schools.each do |school, locHash| 
		organizedSchools[locHash[:location]] == 0 ? organizedSchools[locHash[:location]] = [school] : organizedSchools[locHash[:location]] << school  
	end 
	organizedSchools
end 
