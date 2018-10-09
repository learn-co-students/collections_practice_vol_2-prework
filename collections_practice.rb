def begins_with_r(array)
  if array.all? {|word| word.start_with?("r")}
      true
      else
      false
    end
end

def contain_a (array)
  a_words =[]
  array.each do |word|
    if word.include?("a")
      a_words << word
  end
end
a_words
end

def first_wa (array)
  array.each do |word|
    if word.to_s.include?("wa")
    return word
    end
  end
end

def remove_non_strings (array)
new_array = []
  array.each do |items|
    if items.class == String
      new_array << items
    end
  end
  new_array
end

def count_elements(array)
  array.uniq.collect do |item|
    item[:count] = array.count(item)
    item
  end
end

def merge_data(key, data)
  final_array = []

  key.each do |k_person|
    k_person.each do| p_key, p_name|
      data.each do| d_person|
        d_person.each do |d_name, d_detail|
          if p_name == d_name
            d_person[d_name][p_key]=p_name
            final_array << d_detail
          end
        end
      end
    end
  end
  final_array
end

def find_cool (cool_hash)
cool_people =[]

  cool_hash.each do |person|
      if person[:temperature] == "cool"
        cool_people << person
      end
  end
  cool_people
end

def organize_schools(schools)
new_hash = {}

  schools.each do |school_name, data|
    data.each do |key, location|
      new_hash[location] = [] if new_hash[location] == nil
      new_hash[location] << school_name
    end

end
new_hash
end
