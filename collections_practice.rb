require 'pry'

def begins_with_r(arr)
new_arr = []
  arr.each do |i|
    if i[0] == "r"
      new_arr.push(true)
    else
      new_arr.push(false)
    end
  end
  if new_arr.include?(false)
    false
  else
    true
  end
end

def contain_a(arr)
  arr.map do |i|
    if i.include?("a")
      i
    end
  end.compact
end


def first_wa(arr)
  arr.each do |i|
    if i[0..1] == "wa"
      return i
    end
  end
end

def remove_non_strings(arr)
  arr.each do |i|
    if i.is_a? String
      return i.split
    end
  end
end

def count_elements(arr)
  arr.each do |new_hash|
    new_hash[:count] = 0
    name = new_hash[:name]
     arr.each do |i|
       if i[:name] == name
         new_hash[:count] += 1
       end
     end
   end.uniq
end

def merge_data(a, b)
  new_arr = []
    a.each do |key, val|
      name = key[:first_name]
#binding.pry
      b.each do |person_name, person_data|
        if person_name[name]
          merged_person = person_name[name]
          merged_person[:first_name] = name
          new_arr << merged_person
#binding.pry
        end
      end
    end
    new_arr
end

def find_cool(hash)
container = []
  hash.each do |key, val|
    if key[:temperature] == "cool"
      container << key
      return container
    end
  end
end

def organize_schools(schools)
organized_schools = {}
  schools.each do |name, location_hash|
#binding.pry
    location = location_hash[:location]
#binding.pry
    if organized_schools[location]
      organized_schools[location] << name
#binding.pry
    else
      organized_schools[location] = []
      organized_schools[location] << name
#binding.pry
    end
  end
  organized_schools
end
