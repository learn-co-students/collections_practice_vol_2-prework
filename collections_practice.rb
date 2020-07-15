require 'pry'
def begins_with_r(array)
    array.each do |x|
        if x[0] != "r"
            return false
        end
    end
    true
end

def contain_a(array)
    a_words = []
    array.each do |x|
        if x.include?("a")
            a_words << x
        end
    end
    a_words
end

def first_wa(array)
    array.each do |x|
        if x[0..1] == "wa"
            return x
        end
    end
end

def remove_non_strings(array)
    string_array = []
    array.each do |x|
        if x.is_a? String
            string_array << x
        end
    end
    string_array
end

def count_elements(array)
    array.group_by do |i|
        i
    end.map do |k, v|
        k[:count] = v.size
        k
    end
end



def merge_data(array1, array2)
    blake_hash = {}
    ashley_hash = {}
    final_array = []
    array2.each do |i|
        i.each do |name_key, name_hash|
            if name_key == "blake"
                blake_hash = name_hash
            elsif name_key == "ashley"
                ashley_hash = name_hash
            end
        end
    end
    
    final_array = array1.map do |i|
        i.map do |name_symbol, name|
            case name
                when "blake"
                    i.merge(blake_hash)
                when "ashley"
                    i.merge(ashley_hash)
            end
            
        end
    end
    final_array.flatten
end


def find_cool(array)
    new_array = []
    array.each do |x|
        x.each do |k, v|
            if v == "cool"
                new_array << x
            end
        end
    end
    new_array
end

def organize_schools(hash)
    organize_schools = {}
    school_array1 = []
    school_array2 = []
    school_array3 = []
    hash.each do |school, location_data|
        location_data.each do |location_key, city|
             case city
                 when "NYC"
                    organize_schools["NYC"] = school_array1.push(school)
                 when "SF"
                    organize_schools["SF"] = school_array2.push(school)
                 when "Chicago"
                    organize_schools["Chicago"] = school_array3.push(school)
             end
        end
    end
    organize_schools
end

