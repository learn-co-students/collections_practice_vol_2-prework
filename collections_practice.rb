require "pry"

def begins_with_r(tools)
    starts_with_r = tools.select {|tool| tool.start_with?("r")}
    starts_with_r.length == tools.length
end

def contain_a(array)
    a_array = []
    
    array.each do |ele|
        if ele.include?("a")
            a_array << ele
        end
    end
    
    a_array
end

def first_wa(array)
    array.each do |ele|
        word = ele.to_s
        if word.start_with?("wa")
            return word
        end
    end
end

def remove_non_strings(array)
    array.select {|ele| ele.instance_of?(String)}
end

def count_elements(array)
    count_hash = {}
    count_array = []
    
    array.each do |ele|
        
        if count_hash[ele]
            count_hash[ele] += 1
        else
            count_hash[ele] = 1
        end
    end
    
    count_hash.each do |key, value|
        count_array << key
        key[:count] = value
    end
    
    count_array
end

def merge_data(keys, data)
    merged_data = []
    
    keys.each do |key|
        
        key.each do |k, v|
            
            data.each do |ele|
                
                ele.each do |name, attribute|
                    
                    if name == v
                        
                        attribute.each do |a, b|
                            key = key.clone
                            key[a] = b
                        end
                        
                        merged_data << key
                    end
                end
            end
        end
    end
    
    merged_data
end

def find_cool(collection)
   cool = []
   
   collection.each do |ele|
       if ele[:temperature] == "cool"
           cool << ele
       end
   end
   
   cool
end

def organize_schools(schools)
    organized = {}
    
    schools.each do |school, hash|
        hash.each do |key, location|
            if organized[location]
                organized[location] << school
            else
                organized[location] = [school]
            end
        end
    end
    
    organized
end












