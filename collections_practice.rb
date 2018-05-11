# Return true if every element of the tools array starts with an "r" and false
# otherwise. should return false if there's an element that does not begin with
# r
def begins_with_r(arr)
  result = arr.select { |element| element[0] == "r" }
  result.size == arr.size
end

# return all elements that contain the letter 'a'
def contain_a(arr)
  arr.select do |element|
    element.include?("a")
  end
end

# Return the first element that begins with the letters 'wa'
def first_wa(arr)
  arr.find do |element|
    element.to_s.include?("wa")
  end
end

# remove anything that's not a string from an array
def remove_non_strings(arr)
  arr.select do |element|
    element == element.to_s
  end
end

# count how many times something appears in an array
def count_elements(arr)
  counter = Array.new
  counter_helper = Array.new
  arr.each do |element|
    if counter_helper.include?(element)
      counter[counter_helper.find_index(element)][:count] += 1
    else
      counter_helper.push(element.clone)
      element[:count] = 1
      counter.push(element)
    end
  end
  counter
end


# combines two nested data structures into one
def merge_data(keys, data)
  result = Array.new
  data.each do |original|
    # Below each is for each person
    original.each do |person_name, person_data|
      person_hash = Hash.new

      # Adding elements from the 'key' variable
      keys.each do |keys_arr|
        if keys_arr[:first_name] == person_name
          keys_arr.each do |attribute, value|
            person_hash[attribute] = value
          end
        end
      end

      # Adding elements from the 'data' variable
      person_data.each do |attribute, value|
        person_hash[attribute] = value
      end

      result.push(person_hash)
    end

  end
  result
end

# find all cool hashes
def find_cool(col)
  col.select do |arr|
    arr[:temperature] == "cool"
  end
end

# organizes the schools by location
def organize_schools(col)
  result = Hash.new
  col.each do |key, value|
    # Add the location array if it doesn't exist
    if !result.include?(value[:location])
      result[value[:location]] = Array.new
    end
    result[value[:location]].push(key)
  end
  result
end
