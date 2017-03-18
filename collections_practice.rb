def begins_with_r(array)
array.all? {|name| name.start_with?("r")}
end

def contain_a(array)
array.select do |name| name.include?("a") end
end

def first_wa(array)
array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
array.delete_if {|elem| !elem.instance_of?(String)}
end

def count_elements(array)
 array.group_by(&:itself).map do |key, value| key.merge(count: value.length)
# .group_by(&:itself) puts all the identical elements in a hash under the same key
# .map to apply that code to every element in the hash
# .merge will take two hashes and piece them together into a single hash
  end
end

def merge_data(keys, data)
  merged =[]
	keys.each do |names|
    names = name[:first_name]
		data.each do |attributes|
      if attributes[name]
			mrg = attributes[name]
      mrg[:first_name] = name
      merged << mrg
      end
		end
	end
	merged
end
