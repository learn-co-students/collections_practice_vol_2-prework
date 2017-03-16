# your code goes here
def begins_with_r(tools)
 check = []
  tools.each do |object|
    if   object.start_with?("r")
      check << object
    end
  end
  if check.length == tools.length
    true
  else
    false
  end
end

def contain_a(array)
  final = []
  array.each do |object|
    if object.include?("a")
      final << object
    end
  end
  final
end

def first_wa(array)
  final = []
  new_array = []
  array.each do |object|
    new_array << object.to_s
  end
  new_array.each do |object|
    if object.start_with?("wa")
      final << object
    end
  end
  final[0]
end

def remove_non_strings(array)
  news = []
  array.each do |object|
    if object.is_a?(String)
      news << object
    end
  end
  news
end

def count_elements(array)
  array.group_by(&:itself).map{|k,v| k.merge(count: v.length)}
end

def merge_data(data1, data2)
array = []
  data1.each do |name_hash|
    data2.each do |stats|
      stats.each do |name, info|
            if name_hash[:first_name] == name
            array << name_hash.merge(info)
      end
      end
    end
  end
  array
end

def find_cool(argument)
  array = []
  argument.each do |stats|
    stats.each do |data, value|
      if value == "cool"
        array << stats
      end
    end
  end
  array
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, place|
    place.each do |label, city|
      if organized_schools.include?(city) == false
        organized_schools[city] = []
        organized_schools[city] << school
    else
      organized_schools[city] << school
    end
  end
end
  organized_schools
end
