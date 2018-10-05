# your code goes here
def begins_with_r(array)
    array.all?{|word| word[0] == 'r'}
end

def contain_a(array)
    array.select{|word| word.include?('a')}
end

def first_wa(array)
    array.select{|word| if word[0..1] ==  "wa" then return word end}
end

def remove_non_strings(array)
    array.select{|element| element.class == String}
end

def merge_data(keys, data)
    merged_data = []
    keys.each do |key|
        data.each do |person_data|
            person_data[key[:first_name]][:first_name] = key[:first_name] 
            merged_data << person_data[key[:first_name]]
        end
    end

    merged_data
end

def find_cool(data)
    data.select{|person| person[:temperature] == "cool"}
end


def organize_schools(data)
    schools_by_location = {}

    data.each do |school, location|
        if schools_by_location[location[:location]]
            schools_by_location[location[:location]] << school
        else 
            schools_by_location[location[:location]] = []
            schools_by_location[location[:location]] << school
        end
    end

    schools_by_location
end


def count_elements(data)
    data.uniq.each do |name|
        name[:count] = 0
    
        data.each do |i|
            if i[:name] == name[:name]
                name[:count] += 1
            end
        end
    end
end