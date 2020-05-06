# Return true if every element of the tools array starts with an "r" and false otherwise.
# should return false if there's an element that does not begin with r
def begins_with_r(collection)
  collection.all? do |item|
    item.upcase.start_with?("R")
  end
end

# return all elements that contain the letter 'a' (FAILED - 1)
def contain_a(collection)
  collection.select do |item|
    item.upcase.include?("A")
  end
end

# Return the first element that begins with the letters 'wa' (FAILED - 1)
def first_wa(collection)
  collection.find do |item|
    item.to_s.start_with?("wa")
  end
end

# remove anything that's not a string from an array (FAILED - 1)
def remove_non_strings(collection)
  collection.delete_if do |item|
    item.class != String
  end
end

# count how many times something appears in an array (FAILED - 1)
def count_elements(collection)
  uniq_collection = collection.uniq
  uniq_collection.collect do |uniq_item|
    uniq_item.merge({:count => collection.count {|item| item == uniq_item} })
    # [uniq_item[:name] = uniq_item[:name], uniq_item[:count] = collection.count {|item| item == uniq_item} ]
    # {:name => uniq_item, :count => collection.count {|item| item == uniq_item}}
    # {:uniq_item => collection.count {|item| item == uniq_item}}
    # [uniq_item, collection.count {|item| item == uniq_item}]
  end
end

def merge_data(keys, data)
  new_object = {}
  keys.collect do |person|
    new_object[person.values.first] = person
  end

  people = []
  data.collect do |attributes|
    new_object.each do |name, value|
      people << value.merge(attributes[name])
    end
  end
  people
end

def find_cool(cool)
  cool.select do |person|
    person[:temperature] == "cool"
  end
end

def organize_schools(schools)
  new_schools = {}
  cities = schools.collect do |key, value|
    value[:location]
  end

  cities.uniq!

  cities.each do |city|
    city_schools = []
    schools.each do |school, info|
      if info[:location] == city
        city_schools << school
      end
      new_schools[city] = city_schools
    end
  end

  new_schools
end
