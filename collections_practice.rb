# your code goes here
require "pry"
def begins_with_r(array)
    i = 0
    while i < array.length
        if array[i].chars[0] != "r"
            return false
        end
        i += 1
    end
    return true
end

def contain_a(array)
    i = 0
    result = []
    while i < array.length
        if array[i].chars.include?("a")
            result << array[i]
            i += 1
        else
            i += 1
        end
    end
    result
end

def first_wa(array)
    i = 0
    while i < array.length
        if array[i].to_s.chars[0] == "w" && array[i].to_s.chars[1] == "a"
            return array[i]
        else
            i += 1
        end
    end
end

def remove_non_strings(array)
    i = 0
    result = []
    while i < array.length
        if array[i].is_a?(String)
            result << array[i]
            i += 1
        else
            i += 1
        end
    end
    result
end

def count_elements(array)
    result = []
    array.each do |item|
        if !result.include?(item)
            result << item
        end
    end
    result.each do |item|
        item[:count] = 0
    end
    array.each do |item|
        result.each do |result_item|
            if result_item[:name] == item[:name]
                result_item[:count] += 1
            end
        end
    end
    result
end

def merge_data(keys, data)
    merged = []
    data_hash = data[0]
    i = 0
    keys.each do |person|
        merged << person
    end
    data_hash.each do |person, details|
        if merged[i][:first_name] == person 
            details.each do |detail, value|
                merged[i][detail] = value
            end
        end
        i += 1
    end    
    merged
end

def find_cool(people)
    result = []
    people.each do |person|
        if person[:temperature] == "cool"
            result << person
        end
    end
    result
end

def organize_schools(schools)
    result = {}
    schools.each do |school, location|
        result[location[:location]] = []
    end
    schools.each do |school, location|
        result[location[:location]] << school
    end
    result
end