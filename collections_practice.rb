require 'pry'

def begins_with_r(array)
    array.each do |element|
        if !(element.upcase.start_with?("R"))
            return false
        end
    end
    return true
end

def contain_a(array)
    array.select! do |element|
        element.include?("a")
    end
end

def first_wa(array)
    array.find do |element|
        element.to_s.start_with?("wa")
    end
end

def remove_non_strings(array)
    array.select! do |element|
        element.is_a? String
    end
end

def count_elements(array)
    # count_array = []
    count_array =  array.map do |element|
        {name: element[:name], count: array.count(element)}
    end
    count_array = count_array.uniq
    return count_array
end

def merge_data(keys, data)
    merged_data = []
    keys.each do |key_hash|
        data.each do |data_hash|
            data_hash.each do |key, value|
                if key == key_hash[:first_name]
                    merged_data_hash = value
                    merged_data_hash[:first_name] = key_hash[:first_name]
                    merged_data << merged_data_hash
                end
            end
        end
    end
    return merged_data
end

def find_cool(data)
    cool_array = []
    data.each do |data_hash|
        if data_hash[:temperature] == "cool"
            cool_array << data_hash
        end
    end
    return cool_array
end

def organize_schools(schools_hash)
    by_location_hash = {}
    schools_hash.each do |school, location_hash|
        if by_location_hash.key?(location_hash[:location])
            by_location_hash[location_hash[:location]] << school
        else
            by_location_hash[location_hash[:location]] = [school]
        end
    end
    return by_location_hash
end
