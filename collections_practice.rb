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
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
  counter = []
  array.each do |word|
    counter << word
  end
  counter.uniq!.map do |word|
    word[:count] = array.count(word)
  end
  counter
end

def merge_data(keys, data)
merged = []
  keys.each do |key|
    data.each do |pair|
      pair.each do |name, info|
        if key[:first_name] == name
          merged << key.merge(info)
        end
      end
    end
  end
  merged
end

def find_cool(array)
  cool_array = []
  array.each do |pair|
    pair.each do |key, value|
      if value == "cool"
        cool_array << pair
      end
    end
  end
  cool_array
end

def organize_schools(array)
  organized = {}

  array.each do |name, location|
    schools = []
    schools << name

    location.each do |label, city|
      if organized.include?(city)
        organized[city] << name
      else
        organized[city] = schools
      end
    end
  end
  organized
end
