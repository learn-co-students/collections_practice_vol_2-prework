require "pry"

def begins_with_r(array)
    
    array.each do |tool|
        if tool[0].downcase != "r"
            return false
        end
    end
    true
end

def contain_a(array)
    has_a = []
    array.each do |element|
       if element.downcase.include?("a")
           has_a << element
       end
   end
    has_a
end

def first_wa(array)
    array.each do |el|
        if el[0..1].downcase == "wa"
            return el
        end
    end
end

def remove_non_strings(array)
    only_strings = []
    array.each do |el|
        if el.class == String
            only_strings << el
        end
    end
    only_strings
end

def count_elements(array)
    count = Hash.new(0)
    array.each do |name|
        count[name] += 1
    end
    result = []
    count.each do |name_hash,count_num|
        name_hash[:count] = count_num
        result << name_hash
    end
    result
end


def merge_data(a1,a2)
    result = []
    hash = {}
    a1.each do |first_names|
        a2.each do |stats|
            hash = first_names.merge(stats[first_names[:first_name]])
            result << hash
        end
    end
    result
end

def find_cool(cool)
    result = []
    cool.each do |person|
        if person[:temperature] == "cool"
            result << person
        end
    end
    result
end


# {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot camp chicago"]}

def organize_schools(schools)
    hash = {}
    schools.each do |school, location|
        location.each do |key, value|
            if hash.has_key?(value)
                hash[value] << school
            else
                hash[value] = [school]
            end
        end
    end
    hash
end
            
