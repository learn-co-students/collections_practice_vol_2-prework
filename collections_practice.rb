# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.include? "wa"
  end
end

def remove_non_strings(array)
  array.select do |non|
    non.is_a? String
  end
end

def count_elements(array)
count = Hash.new(0)
i_array = []
new_hash = {}
    array.each do |item|
      count[item] += 1
    end
    count.each do |key, value|
      new_hash = key
      new_hash[:count] = value
      i_array << new_hash
    end
    i_array
end

def merge_data(key, value)
  key.each do |names|
    value.each do |stats|
      names.merge!(stats[names[:first_name]])
    end
  end
end

def find_cool(array)
  array.delete_if do |hash|
    hash[:temperature] != "cool"
  end
end

def organize_schools(schools)
  school_hash = {}
  schools.each do |name, location|
    location.each do |key, value|
      if school_hash[value] == nil
        school_hash[value] = [name]
      else
        school_hash[value] << name
      end
    end
  end
  school_hash
end
