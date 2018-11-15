def begins_with_r(array)
  truth_array = []
  array.each do |el|
    if el[0].downcase != 'r'
      return false
    end
  end
  return true
end

def contain_a(array)
  words_with_a = []
  array.each do |el|
    if el.include?("a")
      words_with_a << el
    end
  end
  words_with_a
end

def first_wa(array)
  words_with_a = []
  array.each do |el|
    if el.to_s.include?("wa")
      words_with_a << el
    end
  end
  words_with_a.first
end

def remove_non_strings(array)
  array.delete_if {|el| el.class != String}
end

def count_elements(array)
  el_count = array.uniq
  el_count.each_with_index {|item, index| el_count[index][:count] = 0}

  el_count.each_with_index do |el, i|
    array.each_with_index do |x, y|
      if el_count[i][:name] == array[y][:name]
          el_count[i][:count] += 1
      end
    end
  end
el_count
end

def merge_data(keys, data)

  keys.map do |key|
    key.merge(data[0][key[:first_name]].to_h)
  end
  #I had to look this solution up. I really struggled here and will def need help with nested hashes.
end

def find_cool(array)
  new_array = []
  array.each do |el|
    el.each do |key, value|
      if value == "cool"
        new_array << el
      end
    end
  end
  new_array
end

def organize_schools(hsh)
  array = []
  hsh.each do |key_1, value_1|
    value_1.each do |key_2, value_2|
      array.push([value_2, key_1])
    end
  end

  new_array = array.group_by {|element| element[0]}

  new_array.each do |key, value|
    value.each do |el|
    el.delete_at(0)
    end
  end

  new_array.each do |key, value|
    value.flatten!
  end
  new_array
end
