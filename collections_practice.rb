require 'pry'

def begins_with_r(tools)
  tools.all? {|item| item.start_with?("r")}
end

def contain_a(elements)
  elements.select do |word|
    word.include?("a")
  end
end

def first_wa(elements)
  elements.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(collection)
  collection.delete_if do |element|
    element.class != String
  end
end

def count_elements(collection)
  new_collection = collection.uniq
  new_collection.each do |item|
    item[:count] = collection.count(item)
  end
  new_collection
end

def merge_data(keys, data)
  merged = []

  keys.each do |info|
    # binding.pry
    data.first.each do |name, attributes|
      if info[:first_name] == name
        merged << info.merge(attributes)
      end
      # binding.pry
    end
  end

  merged
end

def find_cool(data)
  solution = []

  solution << data.find do |hash|
    hash.values.include?("cool")
  end
end

def organize_schools(schools)
  organized = {}
  names = schools.keys
  locations = schools.values.collect do |school_data|
    school_data[:location]
  end.uniq

  locations.each do |city|
    organized[city] = names.select do |name|
      school_location(schools, name) == city
    end
  end

  organized
end

def school_location(schools, name)
  schools.fetch(name).fetch(:location)
end
