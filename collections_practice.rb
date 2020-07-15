require 'pry'

def begins_with_r(tools)

  tools.all? do |lang|
    lang.split(//)[0] == 'r'
  end

end

def contain_a(elements)

  elements.select {|element| element.include?("a")}

end

def first_wa(words)

  words.select {|word| word[0..1] == "wa"}[0]

end

def remove_non_strings(data)

  data.select {|object| object.is_a?(String)}

end

def count_elements(names)

  name_count = names.uniq.each do |element|
    element[:count] = 0
  end

  names.each do |element|
    name_count.each do |name|
      if name[:name] == element[:name]
        name[:count] += 1
      end
    end
  end

  name_count
end

def merge_data(keys, data)

  merged_data = []

  keys.each do |name_hash|
    data.each do |info|
      info.each do |name, stats|
        if name_hash[:first_name] == name
          merged_data << name_hash.merge(stats)
        end
      end
    end
  end

  merged_data
end

def find_cool(data)

  cool_array = []

  data.each do |info|
    if info[:temperature] == "cool"
      cool_array << info
    end
  end

  cool_array
end

def organize_schools(schools)

  organized_schools = {}

  schools.each do |campus, location|
    location.each do |key, city|
      organized_schools[city] = []
    end
  end

  schools.each do |campus, location|
    location.each do |key, city|
      organized_schools[city] << campus
    end
  end

  organized_schools
end
