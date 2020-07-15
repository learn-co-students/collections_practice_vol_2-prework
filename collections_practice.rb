# your code goes here
def begins_with_r(array)
	array.all? {|word| word.chars.first == "r" }
end


def contain_a(array)
	array.select { |word| word.include?("a") }
end


def first_wa(array)
	array.detect{|word| word.to_s.include?("wa")}
end

def remove_non_strings(array)
	new_array = []
		array.each do |x|
			if x == x.to_s
			new_array << x
			end
		end
	new_array 
end

def count_elements(array)
	compare_array = array.uniq
		compare_array.each do |x|
			counter = 0
			array.each do |y|
				if x == y
			counter += 1
		end
	end
	x[:count] = counter
end
compare_array
end


def merge_data(arr1, arr2)
  merged_hashes = []

  	arr1.each do |person|
  		name = person[:first_name]
  	arr2.each do |data|
  		if data[name]
  		merged_person = data[name]
  		merged_person[:first_name] = name
  		merged_hashes << merged_person 
  		end
 	 end
	end
merged_hashes
end


def find_cool(array)
	cool_array = []
	array.each do |element|
		if element[:temperature] == "cool"
		cool_array << element
		end
	end
cool_array
end


def organize_schools(array)
	organize = {}
	
	array.each do |name, location_city|
	location = location_city[:location]
	
		if organize[location]
			organize[location] << name
		else 
			organize[location] = []
			organize[location] << name
		
		end
	end
	organize
end

# {"flatiron school bk"=>{:location=>"NYC"}, "flatiron school"=>{:location=>"NYC"}, "dev boot camp"=>{:...=>{:location=>"Chicago"}, "general assembly"=>{:location=>"NYC"}, "Hack Reactor"=>{:location=>"SF"}}



# [{:first_name=>"blake"}, {:first_name=>"ashley"}]

# [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
