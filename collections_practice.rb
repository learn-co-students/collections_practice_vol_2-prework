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
    array.each_with_object(Hash.new(0)){|word, counts| counts[word]+=1}
end

def merge_data(keys, data)
    keys.merge(data)
end

def find_cool(array)

end

def organize_schools(array)

end
