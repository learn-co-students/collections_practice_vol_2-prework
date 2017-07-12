# your code goes here
require 'pry'

def begins_with_r(array)
        array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
    new_array = []
    array.each do |element|
        temp_array = element.split(//)
        if temp_array.any? { |letter| letter == "a"}
                new_array << element
            end
        end
    new_array
end

def first_wa(array)
    array.find do |element|
        if element.is_a?(String)
        temp_array = element.split(//)
        if temp_array.first(2) == ["w","a"]
            return element
        end
        end
    end
end

def remove_non_strings(array)
    array.select do |element|
        element.is_a?(String)
    end
end

def count_elements(array)
    new_array = array.uniq
    new_array.each do |hash|
        hash[:count] = array.count(hash)
        end
    new_array
end

def merge_data(keys, data)
    new_array = []
    i = 0
    while i < keys.length
        new_array << keys[i].merge(data[0].values[i])
        i+= 1
    end
    new_array
end

def find_cool(cool)
    new_array = []
    cool.each do |hash|
        hash.each do |key, value|
            if value == "cool"
                new_array << hash
                end
            end
        end
    new_array
end

def organize_schools(schools)
    school_hash = Hash.new {|hash,key| hash[key] = []}
    schools.each do |key, hash|
            school_hash[hash.values[0]] << key
    end
    school_hash
end
