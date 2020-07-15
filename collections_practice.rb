require "pry"

def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end


def contain_a(array)
  array.select do |string|
    string.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.class == String
  end
end


def count_elements(array)
  array.group_by(&:itself).map do |k, v| #groups all of the identical elements together
    k.merge(count: v.length) #adds "count" to the hash
  end
end

def merge_data(keys, data)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    data.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container.push(merged_person)
      end
    end
  end
  container 
end

def find_cool(array)
  array.select do |person|
    person[:temperature] == "cool"
  end
end


def organize_schools(schools)
  school_hash = {}
  schools.each do |school, value|
    location = value[:location]
    if school_hash[location]
      school_hash[location] << school
    else
      school_hash[location] = []
      school_hash[location] << school
    end
  end
  school_hash
end
