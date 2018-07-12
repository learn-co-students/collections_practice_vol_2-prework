
def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.select do |element|
    if element.to_s.start_with?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
  array.select {|element| element.class === "String"}
end

def count_elements(array)
  array.each_with_object(Hash.new(0)) { |k,v| v[k[:name]] += 1 }.
    map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(keys, data)
  results = []
  data.each do |hash|
    hash.each do |key, value|
      results << ({first_name: key}.merge(value))
    end
  end
  return results
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(array)
  results = {}
  array.each do |school, hash|
    if results[hash[:location]] == nil
      results[hash[:location]] = []
    end
        results[hash[:location]].push(school)
    end
  return results
end
