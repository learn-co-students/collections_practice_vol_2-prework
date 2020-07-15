# your code goes here

def begins_with_r(tools)
    tools.all? {|tool| tool.downcase.start_with?("r")}
end

def contain_a(elements)
    elements.select {|element| element.downcase.include?("a")}
end

def first_wa(arr)
    arr.detect { |elem| elem.to_s.start_with?("wa")}
end

def remove_non_strings(arr)
    arr.reject { |elem| elem.class != String}
end

def count_elements(arr)
    uniq_arr = arr.uniq
    
    uniq_arr.each { |elem| elem[:count] = arr.count(elem)}
    uniq_arr
end

def merge_data(keys, data)

    name_obj = {}
    
    keys.collect { |name| name_obj[name.values.first] = name }
    
    merged_arr = []
    
    data.collect do |chars|
        name_obj.each do |name, traits|
            merged_arr << traits.merge(chars[name])
        end
    end
    merged_arr
end

def find_cool(cool)
    cool.select {|elem| elem[:temperature] == "cool"}
end

def organize_schools(schools)
    
    org_obj = {}
    
    locations = schools.collect {|school, area| area[:location]}
    locations.uniq!
    
    locations.each do |place|
        bootcamps = []
        
        schools.each do |school, area|
            if area[:location] == place
                bootcamps.push(school)
            end
            
            org_obj[place] = bootcamps
        end
    end
    org_obj
    
end

