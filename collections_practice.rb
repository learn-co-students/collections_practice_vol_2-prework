require 'pry'

# your code goes here
def begins_with_r(array)
  array.each do |element|
    # binding.pry
    if element.split("").first != "r"
      return false
      break
    end
  end
  return true
end

def contain_a(array)
  a_array = []
  array.each do |element|
    if element.split("").include?("a")
      a_array << element
    end
  end
  a_array
end

def first_wa(array)
  letters_array = []
  index_w = nil
  index_a = nil
  array.each do |element|
    if element.to_s.split("").include?("w") && element.to_s.split("").include?("a")
      index_w = element.to_s.split("").index("w")
      index_a = element.to_s.split("").index("a")
      # binding.pry
      if index_w + 1  == index_a

        # if element.to_s.split("").find("w")
        return element
      end
    end

  end
end

def remove_non_strings(array)
  new_array = []
  array.collect do |element|
    if element.is_a? String
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  name_array = []
  # name_count = 0
  current_name = ""
  array.each_with_index do |element, index|
    count_hash = {}
    # while counter <= count_array.length
    # binding.pry
    counter = 0
    if counter < name_array.length && name_array[counter][:name] == element[:name]
      name_array[counter][:count] += 1
      counter += 1
    else
      # name_array[0] == nil
      count_hash[:name] = element[:name]
      count_hash[:count] = 1
      name_array << count_hash
    end
    # counter += 1
  end
  return name_array
end

def merge_data(data1,data2)
  # binding.pry
  combination_array = []
  data1.each_with_index do |person1, index|
    # binding.pry
    if person1[:first_name] == data2[0].keys[index]
      combination_array[index] = person1
      counter = 0
      while counter < data2[0][person1[:first_name]].keys.length
        combination_array[index][data2[0][person1[:first_name]].keys[counter]] = data2[0][person1[:first_name]].values[counter]
        counter += 1
      end
    end
  end
  combination_array
end

def find_cool(cool)
  cool_array = []
  cool.each_with_index do |hash|
    # binding.pry
    # hash[]
    if hash[:temperature] == "cool"
      cool_array << hash
    end
  end
  cool_array
end

def organize_schools(schools)
  organized_hash = {}
  schools.each do |school_data|
    school_array = []
    counter = 0
    # school_array << school[counter]
    # organized_hash format:
    ## {location_1 => [school_name_1, school_name_2],
    ##  location_2 => [school_name_1, school_name_2],
    ##  location_3 => [school_name_1, school_name_2]}

    if organized_hash[school_data[counter+1].values[counter]] == nil
      # binding.pry
      organized_hash[school_data[counter+1].values[counter]] = school_array
      organized_hash[school_data[counter+1][:location]] << school_data[counter]
    # elsif organized_hash.keys[counter] == school_data[counter+1][:location]
    #   binding.pry
    #   organized_hash[school_data[counter+1][:location]] << school_data[counter]
    else
      # binding.pry
      # school_array = []
      # organized_hash[school_data[counter+1].values[counter]] = school_array
      organized_hash[school_data[counter+1][:location]] << school_data[counter]
    end
  end
  organized_hash
end
