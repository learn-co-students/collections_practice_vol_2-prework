def begins_with_r(array)
    !array.any? {|string| string[0] != 'r'}
end

def contain_a(array)
    array.select {|string| string.include?('a')}
end

def first_wa(array)
    array.find {|string| string[0..1] == 'wa'}
end

def remove_non_strings(array)
    array.delete_if {|item| !item.is_a?(String)}
end

def count_elements(array)
    count = {}
    array.each do |item|
        if count.key?(item)
            count[item] += 1
        else
            count[item] = 1
        end
    end
    new_array = []
    count.each do |i|
        i[0][:count] = i[1]
        new_array.push(i[0])
    end
    new_array
    
end

def merge_data(keys, data)

    merged_data = []
    keys.each do |k|
        temp = k
        data[0].each do |d|
            if k[:first_name] == d[0]
                puts 'SUCCESS'
                puts temp.inspect
                puts d[1].inspect
                temp = k.merge(d[1])
                break
            end
        end
        merged_data << temp
    end
    merged_data
end

def find_cool(data)
    data.select do |x|
        x[:temperature] == 'cool'
    end
end

def organize_schools(data)
    organized = Hash.new
    data.each do |d|
        loc = d[1][:location]
        if organized.key?(loc)
            organized[loc] << d[0]
        else
            organized[loc] = [d[0]]
        end
    end
    organized
end
