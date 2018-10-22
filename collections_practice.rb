# your code goes here
  def begins_with_r(array)
      array.all?{|element| element.start_with?("r")}
  end

  def contain_a(array)
    array.keep_if{|element| element.include?("a")}
  end

  def first_wa(array)
    array.collect do |element|
      return array.find{|element| element.to_s.start_with?("wa")}
  end
end

  def remove_non_strings(array)
    array.delete_if { |element| !(element.is_a? String)}
  end

  def count_elements(array)
    array.group_by(&:itself).map{|key, value| key.merge(count: value.length)}
  end

  def merge_data(keys, data)
    merged_array = Array.new
    keys.each do |keys_name|
      keys_name.each do |keys, values|
      data.each do |data_person|
          data_person.each do |data_name, data_details|
              if values == data_name
              data_person[data_name][keys] = values
              merged_array << data_details
            end
          end
        end
      end
    end
    merged_array
  end

def find_cool(cool_hashes)
  #finds all the cool hashes
    temperature_array = [ ]
    cool_hashes.each do |item|
      item.each do |key, value|
        temperature_array << item if value == "cool"
      end
    end
    temperature_array
end

def organize_schools(schools)
  schools_array = Hash.new
  schools.each do |school, data|
    data.each do |key, value|
      if key == :location
        !schools_array.keys.include?(value) ? schools_array[value] = [school] : schools_array[value] << school
      end
    end
  end
  schools_array
end
