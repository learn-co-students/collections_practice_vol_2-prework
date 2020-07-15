# your code goes here
def begins_with_r(array)
  if array.all? do |letter|
    letter.start_with?("r")
  end
  true
else
  false
end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  onlys = []
  array.collect do |elem|
    if elem.class == String
      onlys << elem
    end
  end
  onlys
end

def count_elements(array)
  counted_elements = []
  array.each do |person|
    if counted_elements.count == 0 || counted_elements.last[:name] != person[:name]
      counted_elements << person
      counted_elements.last.merge!(:count => 1)
    else
      counted_elements.each do |element|
        if person[:name] == element[:name]
          element[:count] += 1
        else
          counted_elements << person
          counted_elements.last.merge!(:count => 1)
        end
      end
    end
  end
  counted_elements
end

def merge_data(keys, data)
  #keys equals an array of two hashes each with a symbol and a string
  #data equals an array containing two hashs of a string and a hash of symbols and strings
  #create an array
  #merge the value of each of the keys with the value of each of the data

  merged = []
  keys.each do |name|
    data.each do |person|
      person.each do |key, value|
        if key == name[:first_name]
          merged << name.merge!(value)
        end
      end
    end
  end
  merged
end

def find_cool(array)
  cool_people = []
  array.each do |person|
    person.each do |key, value|
      if value == "cool"
        cool_people << person
      end
    end
  end
  cool_people
end

def organize_schools(array)
  organized_schools = {}
  array.each do |name, loc|
    loc.each do |location, city|
      if organized_schools.include?(city) == false
        organized_schools[city] = []
        organized_schools[city] << name
      else
        organized_schools[city] << name
      end
    end
  end
  organized_schools
end
