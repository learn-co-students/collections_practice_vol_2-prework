def begins_with_r(array)
    array.all? do |string|
       string[0] == "r"
    end
end

def contain_a(array)
    array.select do |string|
        string.include?("a")
        end
end

def first_wa(array)
    array.find do |string|
        string[0]=="w" && string[1]=="a"
        end
end

def remove_non_strings(array)
    array.delete_if do |items|
        items.class != String
    end
end

def count_elements(array)
    #groups identical info together
    group = array.group_by(&:itself)
    #merges them together
    group.map do |k, v|
        k.merge(count: v.length)
        end
end

def merge_data(keys, data)
    merged = []
    keys.each_index do |i|
        data[0].keys.each do |name|
            if name == keys[i][:first_name]
                merged<<keys[i].merge(data[0][name])
                end
            end
        end
    merged
end
            
def find_cool(cool)
    array = []
    cool.each_index do |i|
        if cool[i].has_value?("cool")
           array<< cool[i]
        end
        end
    array
end

#def organize_schools(schools)
#    new_hash={}
#    array = []
#    schools.keys.each do |school_name|
#        schools[school_name].each do |location, city|
#            if schools[school_name][location] =
#            new_hash[city]=schools.keys
#            end
#        end
#end
#    end

def organize_schools(schools)
    new_hash={}
    schools.each do |school, info|
        info.each do |location, city|
            if new_hash.has_key?(city)
                new_hash[city]<<school
                else
                new_hash[city]=[school]
                end
            end
        end
    new_hash
end

    
    
