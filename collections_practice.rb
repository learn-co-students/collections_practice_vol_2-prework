# your code goes here
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
	global_hsh = []
	global_hsh2 = []

	data.each	do |key| 

		key.each do |el, i|

				global_hsh << {:first_name => el}
				global_hsh2 << i

		end

	end

	last_hsh = []


	i = 0

	while i < keys.length

		last_hsh << global_hsh[i].merge(global_hsh2[i])


		i += 1

	end

	last_hsh
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












