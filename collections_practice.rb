def begins_with_r(array)
  result = true
  array.each do |element|
    if element.start_with?("r") == false
      result = false
    end
  end
  result
end

def contain_a(array)
  a_elements = []
  array.each do |element|
    if element.include?("a")
      a_elements << element
    end
  end
  a_elements
end

def first_wa(array)
  array.find do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
  array
end

def count_elements(array)
  counts = []
  array.each do |element|
    if counts.include?({:count => array.count(element), :name => element.values.join}) == false
      counts << {:count => array.count(element), :name => element.values.join}
    end
  end
  counts
end

def merge_data(data1, data2)
  merged = []
  data2.each do |element2|
    element2.each do |key2, value2|
      data1.each do |element1|
        element1.each do |key1, value1|
          if value1 == key2
            merged << element1.merge(value2)
          end
        end
      end
    end
  end
  merged
end

def find_cool(array)
  who_is_cool = []
  array.each do |element|
    element.each do |key, value|
      if value == "cool"
        who_is_cool << element
      end
    end
  end
  who_is_cool
end

def organize_schools(hash_data)
  organized = {}
  hash_data.each do |school, location|
    location.each do |location, value|
      if organized[value] == nil
        organized[value] = [school]
      else
        organized[value] << school
      end
    end
  end
  organized
end
