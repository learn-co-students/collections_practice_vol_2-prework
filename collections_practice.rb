def begins_with_r(array)
	array.all? { |tool| tool.start_with?("r") }
end

def contain_a(array)
	array.select { |element| element.chars.include?('a') }
end

def first_wa(array)
	remove_non_strings(array)
	array.find { |item| item.start_with?("wa") }
end

def remove_non_strings(collection)
	collection.delete_if { |element| element.class != String }
end

def count_elements(array)
	uniq_array = array.uniq
	uniq_array.uniq { |val| val.store(:count, array.count(val)) }
end

def merge_data(coll1, coll2)
	coll2[0].values.collect.with_index { |val, index| coll1[index].merge(val) }
end

def find_cool(arr)
	arr.select { |val| val if val[:temperature] == "cool" }
end

def organize_schools(schools)
	hash = {}
	locs = schools.collect { |key, val| val[:location] }.uniq
	locs.map { |loc| hash.store(loc, schools.select { |name, hashval| hashval[:location] == loc }.keys) }
	hash
end

=begin
schools = {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    }
=end