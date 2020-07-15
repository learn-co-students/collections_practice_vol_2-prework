def begins_with_r(array)
  array.all? do |word|
    word.chr == 'r'
  end
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?('wa')
  end
end

def remove_non_strings(array)
  array.delete_if do |i|
    i.class != String
  end
end

def count_elements(array)
  new_array = array.uniq

  array.each do |pair|
    if new_array.include?(pair)
      new_array[new_array.index(pair)][:count] = array.count(pair)
    end
  end
  new_array
end

def merge_data(data_1, data_2)
  merged = []

  data_1.each do |item|

    item.each do |k, name|
      merged << item.merge(data_2[0][name])
    end
  end
  merged.flatten
end

def find_cool(array)
  array.select do |item|
    item.values.include?('cool')
  end
end

def organize_schools(locations)
  new_order = {}

  locations.each do |school, location|

    location.each do |l, city|
      if new_order.keys.include?(city)
        new_order[city] << school
      else
        new_order[city] = [school]
      end
    end
  end
  new_order
end
