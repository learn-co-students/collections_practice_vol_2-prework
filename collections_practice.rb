require "pry"

def begins_with_r(tools)
  tools.all? { |tool| tool[0] == 'r' }
end

def contain_a(words)
  words.select { |word| word.include?('a')  }
end

def first_wa(words)
  words.find { |word| word.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.reject { |e| e.class != String }
end

def count_elements(array)
  new_hashes = []
  array.uniq.each do |hash| 
    hash.each do |key, value| 
      new_hashes << {
        name: value, 
        count: array.count { |new_hash| new_hash == hash }
      } 
    end 
  end
  new_hashes
end

def merge_data(keys, data)
  merged_data = []
  i = 0
  data.each do |main_hash|
    main_hash.each do |name, properties_hash|
      merged_data << properties_hash.merge(keys[i])
      i += 1
    end
  end
  merged_data
end

def find_cool(array)
  # find all cool hashes
  array.select {|person| person[:temperature] == "cool"}
end

def organize_schools(schools)
  cities = schools.collect{|name, property| property[:location]}.uniq
  organized_schools = {}
  cities.each {|city| organized_schools[city] = []}
  schools.each do |name, property|
    if cities.include?(property[:location])
      organized_schools[property[:location]] << name
    end
  end
  organized_schools
end