require 'pry'

def begins_with_r(tools)
    first_letter = tools.collect do |tool|
        tool[0]
    end
    Array.new(tools.count,"r") == first_letter
end

def contain_a(elements)
    elements.select do |word|
        word.index("a") != nil
    end
end

def first_wa(elements)
    elements.find do |element|
        element[0,2] == "wa"
    end
end

def remove_non_strings(things)
    things.select do |thing|
        thing.class == String
    end
end

def count_elements(elements)
    elements.each_with_index do |hash,index|
        element_counter = elements.select do |hash_to_find|
            hash_to_find == hash
        end
        elements[index][:count] = element_counter.length
        elements.delete_if do |repeat|
           repeat[:name] == hash[:name] && repeat.count == 1 
        end
    end
    elements
end

def merge_data(keys,data)
    data[0].each do |key,value|
        keys.each do |name|
            if name[:first_name] == key
                name.merge!(value)
            end
        end
    end
    keys
end

def find_cool(hash_list)
    hash_list.select do |hash|
        hash[:temperature] == "cool"
    end
end

def organize_schools(schools)
    new_hash = {}
    schools.each do |school,location|
        if new_hash[location[:location]] == nil
            new_hash[location[:location]] = [school]
        else
            new_hash[location[:location]].push(school)
        end
    end
    new_hash
end