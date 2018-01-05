# your code goes here

def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word[0..1] == "wa"}
end

def remove_non_strings(array)
  array.select {|element| element.is_a? String}
end


def count_elements(array)
  names = []
  array.each do |og_hash|
    names << og_hash[:name]
    end

    array.each {|hash| hash[:count] = names.count(hash[:name])}.uniq
end

# NOTE: come back to this guy 
def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  return_ar = []
  array.each do |hash|
    if hash[:temperature].split(" ").first == "cool"
      return_ar << hash
    end
  end
  return_ar
end

def organize_schools(school_hash)
  return_hash = {}

    school_hash.each do |key, value|
      if return_hash[value[:location]].is_a? Array
        return_hash[value[:location]] << key
      else
        return_hash[value[:location]] = [key]
      end
    end

    return_hash
end
