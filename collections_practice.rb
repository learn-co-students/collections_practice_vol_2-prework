# your code goes here

def begins_with_r (array)
  i = 0

  while i < array.length
    return false if array[i][0] != 'r'


    i+=1
  end
  true
end

def contain_a (array)

  array.select {|element| element.include? "a"}

end

def first_wa (array)

  array.each do |element|
    if element[0..1] == 'wa'
      return element
    end
  end

end

def remove_non_strings (array)
  new_array = []

  array.each_with_index do |element, index|
    if element.class == String
     new_array << element
    end

  end
  new_array
end

def count_elements (array_of_hashes)
  uniq_array = array_of_hashes.uniq

    uniq_array.each do |element|

    counter = array_of_hashes.count(element)

    element[:count] = counter

    end
uniq_array
end

def merge_data (data1, data2)

  first = nil
  last = nil
  if data1[0].keys[0].class  == Symbol
    first = data1
    last = data2
  else
    first = data2
    last = data1
  end
  i = 0

  while i < first.length

    last.each do |hash_in_array|

      hash_in_array.each do |hash_key_names, hash_values|

        if first[i].values.include? (hash_key_names)
          first[i].merge! (hash_values)
        end
      end
    end

  i+=1
  end
first

end

def find_cool (array)
  cool_array = []

  array.each do |element|

    if element.values.include? ('cool')
      cool_array << element
    end

  end
cool_array
end

def organize_schools (schools)
  location_array = []
  organized_schools_hash = {}

  schools.each do |schools, school_facts_hash|
    location_array << school_facts_hash[:location]
  end

  location_array = location_array.uniq

  location_array.each do |city|
    organized_schools_hash[city] = []
    schools.each do |schools, school_facts_hash|
      city_schools_array =[]
      if school_facts_hash.values[0] == city
      organized_schools_hash[city].push(schools)

      end

    end

  end
  organized_schools_hash
end
