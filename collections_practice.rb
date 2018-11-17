require "pry"

def begins_with_r arr
    counter = 0
    arr.each do |item|
        if item[0] == 'r'
        counter += 1
        end
    end  
    if counter == arr.size
        return true
    end
    false
end

def contain_a arr
    result = []
    arr.each do |word|
        if word.include?('a')
            result << word
        end
    end
    result
end

def first_wa arr
    arr.each do |item|
        checkLetters = item.slice(0, 2)
        if checkLetters == 'wa'
            return item
        end
    end
    "There are no items that start with 'wa.'"
end

def remove_non_strings arr
    arr.delete_if {|item| !item.is_a? String}
end

def count_elements arr
    name_count = {}
    arr.each do |item|
      current_name = item[:name]
      if name_count[current_name]
        name_count[current_name] += 1
      else
        name_count[current_name] = 1
      end
    end
  
    result = []
    name_count.each do |name, number_of_times|
      result << { name: name, count: number_of_times}
    end
    
    result
  end

def merge_data keys, data
    result = []
    keys.each do |name_hash|
        data.each do |name|
            first_name = name_hash[:first_name]
            attributes = name[first_name]
            merged_data = name_hash.merge(attributes)
            result << merged_data
        end
    end
    result
 end

 def find_cool arr_of_hashes
    result = []
    arr_of_hashes.each do |hash|
       if hash[:temperature] == 'cool'
            result << hash
        end
    end
    result
end

def organize_schools schools
    result = {}
    schools.each do |school_name, location_hash|
        location = location_hash[:location]
        if !result[location]
            result[location] = [school_name]
        else
            result[location] << school_name
        end
    end
    result
end