def begins_with_r(array)
  array.all? { |el| el.start_with?("r") }
end

def contain_a(array)
  array.select { |el| el.include?("a")}
end

def first_wa(array)
  array.each do |el|
    if el.is_a?(String)
      return el if el.start_with?("wa")
    else
      next
    end
  end
  nil
end

def remove_non_strings(array)
  array.reject { |el| !el.is_a?(String)}
end


def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end

  array.uniq
end

def merge_data(keys, values)
  result = []
  keys.each do |fname|
    name = fname[:first_name]
    values.each do |data|
      if data[name]
        merged = data[name]
        merged[:first_name] = name
        result << merged
      end
    end
  end

  result
end

def find_cool(array)
  result = []

  array.each do |hash|
    result << hash if hash.keys.include?("cool") || hash.values.include?("cool")
  end

  result
end

def organize_schools(schools)
  organized = {}
  schools.each do | name, location_hash |
    location = location_hash[:location]
    if organized[location]
      organized[location] << name
    else
      organized[location] = []
      organized[location] << name
    end
  end

  organized
end
