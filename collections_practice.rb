require 'pry'
# your code goes here
def begins_with_r(array)
  array.all? do |arr|
    arr[0].downcase == "r"
  end
end

def contain_a(arguments)
  arguments.map do |i|
    if i.include?("a")
      i
    end
  end.compact
end

def first_wa(arguments)
  arguments.map do |i|
    if i[0..1] == "wa"
      i
    end
  end.compact.first
end


def remove_non_strings(arguments)
  arguments.delete_if { |i| i.class != String}
end

def count_elements(arguments)
  counts = arguments.group_by{|i| i}.map do |k,v|
    k[:count] = v.count
    k
  end
  # binding.pry
end


def merge_data(keys, data)
  data[0].values.map.with_index do |v, index|
    keys[index].merge(v)
  end
  # binding.pry
end

def find_cool(arguments)
  arguments.map do |i|
    if i.values.include?("cool")
     i
    end
  end.compact
  # binding.pry
end

def organize_schools(schools)
  new_hash = {}
  schools.map do |school, location|
    # puts "#{school}: #{location}"
    location.values.map do |city|
      new_hash[city] ||= []
      new_hash[city].push(school)
    end
  end
  new_hash
  # binding.pry
end
