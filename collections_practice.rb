def begins_with_r(list)
    list.all? do |x|
        x[0] == 'r'
    end
end

def contain_a(list)
    new_list = []
    list.each do |word|
        if (word.include? 'a')
            new_list.push(word)
        end
    end
    return new_list
end

def first_wa(list)
    return list.find {|x| x[0] == 'w' && x[1] == 'a'}
end

def remove_non_strings(list)
    list.select {|x| x.class == String}
end

def count_elements(array)
    array.each_with_object({}) { |a,b| b.update(a[:name]=>1) { |_,o,n| o+n } }.
        map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(hash1,hash2)
    array = []
    hash1.each_with_index do  |x,v|
        array << hash1[v].merge(hash2[0][hash1[v].values[0]])
    end
    array
end

def find_cool(value)
    value.select {|x| x[:temperature] == "cool"}
end

def organize_schools(list)
    new_list = {}
    list.each do |name,loc|
        locate = loc[:location]
        if new_list[locate]
            new_list[locate] << name
        else
            new_list[locate] = []
            new_list[locate] << name
        end
    end
    new_list
end
