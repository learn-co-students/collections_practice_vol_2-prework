# your code goes here
require 'pry'
def begins_with_r(array)
	array.all? { |el| el.start_with?("r") }
end

def contain_a(array)
	array.select { |el| el.include?('a')  }
end

def first_wa(array)
	array.find {|el| el[0..1] == 'wa'}
end

def remove_non_strings(array)
	array.delete_if	{|x| x.class != String} 
end

def count_elements(hsh)
	new_arr = {}

	hsh.map do |el|
			{ el.to_a[0][0] => el.to_a[0][1], 
				:count => hsh.count(el) }
	end.uniq
end

def merge_data(keys, data)
	new_hsh = []

	i = 0

	# data is an array with hash inside
	# get hash with data[0] and iterate through it
	data[0].each do |key, val|

		# temp hsh inside the loop initialized with {:firstname => "blake|| ashley" }
		inside_hsh = keys[i]

		# find the data attributes that belong to "blake" || "ashley" from data and iterate through them
		data[0][key].each do |k, v|
			inside_hsh[k] = v
		end

		# push temp hsh to global array of hsh
		new_hsh << inside_hsh

		i += 1

	end
	new_hsh
end

def find_cool(cool)

	coolz = []

	cool.map do |k| 
	 	k[:temperature] == 'cool' ? k : nil
	 end.compact!

end

def organize_schools(schools)

	global_hsh = {}

	schools.each do |k, v|
		if global_hsh.has_key?(v[:location])
			global_hsh[v[:location]] = global_hsh[v[:location]] << k.to_s

		else 
			global_hsh[v[:location]] = [k]
		end

	end

	global_hsh

end












