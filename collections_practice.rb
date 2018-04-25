def begins_with_r(arr)
  arr.all? { |word| word.start_with?("r") }
end


def contain_a(arr)
  arr.find_all { |word| word.downcase.include?("a") }
end


def first_wa(arr)
  arr.find { |word| word.to_s.start_with?("wa") }
end


def remove_non_strings(arr)
  arr.find_all { |word| word.is_a?(String) }
end


def count_elements(arr)
  count_arr = []
  arr.uniq.each do |el|
    el[:count] = arr.count(el)
    count_arr << el
  end
  count_arr
end


def merge_data(keys, data)
  merged_data = []
  keys.each do |keys_hash|
    keys_hash.each do |key, value|
      data.each do |data_hash|
        data_hash.each do |name, info|
          if name == value
            merged_data << keys_hash.merge(info)
          end
        end
      end
    end
  end
  merged_data
end


def find_cool(arr)
  cool = []
  arr.each do |hash|
    hash.each_value do |value|
      if value == "cool"
        cool << hash
      end
    end
  end
  cool
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, location_hash|
    location_hash.each do |location_key, location_value|
      if organized_schools[location_value]
        organized_schools[location_value] << school
      else
        organized_schools[location_value] = [] << school
      end
    end
  end
  organized_schools
end
