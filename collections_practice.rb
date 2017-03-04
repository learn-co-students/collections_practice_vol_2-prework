def begins_with_r(array)
  array.all? { |word| word.upcase.start_with?("R")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|word| word.class != String}
end

def count_elements(array)
  array.uniq.each {|word| word[:count] = array.count(word)}
end

def merge_data(keys, data)
merged = []
data = data[0]
keys.each do |element|
  first_name = element[:first_name]
  keys = {:first_name => first_name}
  keys.merge!(data[first_name])
  merged << keys
end
merged
end

def find_cool(array)
  results = []
  array.each do |i|
    if i[:temperature] == "cool"
      results << i
    end
  end
  results
end


def organize_schools(array)
  list = {}
  array.each do |city, school|
    location = school[:location]
    if list.has_key?(location)
      list[location]<< city
    else
      list[location]= [city]
    end
  end
  list
end
