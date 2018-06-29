require 'pry'

def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  a = []
  array.each do |word|
    if word.include?("a")
      a.push(word)
    end
  end
  a
end

def first_wa(array)
  array.each do |word|
    if word.to_s.start_with?("wa")
      return word
    else next
    end
    end
end

def remove_non_strings(array)
  array.select do |word|
  word.class == String
end
end

def count_elements(array)
  array.uniq.each {|i|
    count = 0
    array.each { |i2|
      if i2 == i then count += 1
      end
    }
    i[:count] = count}
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |first|
    data.each do |names|
    names.each do |name, info|
      if name == "blake" && first[:first_name] == "blake"
        merged_data.push(first.merge!(info))
      end
      if name == "ashley" && first[:first_name] == "ashley"
        merged_data.push(first.merge!(info))
        end
      end
  end
  end
end


def find_cool(hash)
  new_array = []
  hash.each do |people|
  if people[:temperature] == "cool"
      new_array.push(people)
    end
end
new_array
end

def organize_schools(schools)
  new_school = {"NYC"=>[],
   "SF"=>[],
   "Chicago"=>[]
   }


 schools.map do |school, location|
  if location[:location] == "NYC"
    new_school["NYC"].push(school)
  elsif location[:location] == "SF"
     new_school["SF"].push(school)
  elsif location[:location] == "Chicago"
    new_school["Chicago"].push(school)
    end
end
new_school
end
