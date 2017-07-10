require 'pry'

# your code goes here
def begins_with_r tools
	tools.all? do |word|
		if word.start_with?("R") || word.start_with?("r")
			true
		else
			false
		end
	end
end

def contain_a elements
	array = []
	elements.each do |word|
		if word.include?("A") || word.include?("a")
			array << word
		end
	end
	array
end

def first_wa elements
	elements.detect do |thing|
		thing.is_a?(String) && thing.start_with?("wa")
	end
end

def remove_non_strings elements
	elements.reject do |thing|
		!thing.is_a?(String)
	end
end

def count_elements array
	new_array = array.uniq
	new_array.each do |element|
		element[:count] = array.count(element)
	end
	new_array
end

def merge_data keys, data
	blah = {}
	boop = {}
	final_array = []
	blah.merge!(data[0]["blake"])
	boop.merge!(data[0]["ashley"])
	final_1 = Hash[keys[0]].merge!(blah)
	final_2 = Hash[keys[1]].merge!(boop)
	final_array << final_1
	final_array << final_2
	final_array
end

def find_cool array_of_hashes
	final_array = []
	array_of_hashes.each do |hash|
		if hash[:temperature] == "cool"
			final_array << hash
		end
	end
	final_array
end

# start with:  
# let(:schools) {
#     {
#       "flatiron school bk" => {
#         :location => "NYC"
#       },
#       "flatiron school" => {
#         :location => "NYC"
#       },
#       "dev boot camp" => {
#         :location => "SF"
#       },
#       "dev boot camp chicago" => {
#         :location => "Chicago"
#       },
#       "general assembly" => {
#         :location => "NYC"
#       },
#       "Hack Reactor" => {
#         :location => "SF"
#       }
#     }
#   }


# expected:
# let(:organized_schools) {
#     {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#      "SF"=>["dev boot camp", "Hack Reactor"],
#      "Chicago"=>["dev boot camp chicago"]}
#   }

def organize_schools schools
	new_hash = {}
	schools.each do |outer, school|
		place = school[:location]
		if !new_hash.has_key?(place)
			new_hash[place] = Array.new
			new_hash[place] << outer
		else
			new_hash[place] << outer
		end
	end
	new_hash
end 
