def begins_with_r(array)
  array.all? {|word| word[0] == "r"}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word[0..1] == "wa"}
end

def remove_non_strings(array)
  array.reject {|el| el.class != String }
end

def count_elements(array)
  result = []
  count = Hash.new(0)
  array.each do |hash|
    hash.each do |name_sym, name|
      count[name] += 1
    end
  end

  array.uniq.each do |hash|
    hash.each do |name_sym, name|
      result << {:name => name, :count => count[name]}
    end
  end
  result
end

def merge_data(keys, data)
  merged = []

  keys.each do |hash|
    hash.each do |name_sym, name|
      data.each do |nested_hash|
        nested_hash.each do |data_name, values|
          if name == data_name
            data_name = Hash.new
            merged << data_name
            data_name[name_sym] = name
            values.each do |attribute, data|
              data_name[attribute] = data
            end
          end
        end
      end
    end
  end
  merged
end



def find_cool(hash)
  result = []
  hash.each do |nested_hash|
    nested_hash.each do |attribute, data|
      if attribute == :temperature && data == "cool"
        result << nested_hash
      end
    end
  end
  result
end

def organize_schools(hash)
  result = Hash.new
  hash.each do |school, location_hash|
    location_hash.each do |location_sym, location|
      result[location] = []
    end
  end

  result.each do |location, arr|
    hash.each do |school, location_hash|
      location_hash.each do |location_sym, location_school|
        if location == location_school
          arr << school
        end
      end
    end
  end
  result
end
















