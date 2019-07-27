require "pry"



def begins_with_r(array)
    counter = 0
    #this is the silliest way I've worked out a problem. I tried to put the return true statement right under the if statement but I think it was quitting its iteration early because of it. Will come back to this one when I think of a better solution
    array.each do |word|
        if word[0] == 'r'
            counter += 1
        else
            return false
        end
    end
    if counter == array.length
        return true
    end
end


def contain_a(array)
    a_arr = []
    array.each do |word|
        if word.include?('a')
            a_arr.push(word)
            end
        end
    a_arr
    end
            
def first_wa(array)
    fixed_array = []
    array.map do |word|
        fixed_array.push(word.to_s)
        end
    
    fixed_array.each do |value|
         if value.include?("wa")
            return value
        end
    end
end

def remove_non_strings(array)
    # array.each do |word|
    #    if word.class == Symbol || word.class != String
    #       array.delete(word)
    #       end
    #   end
    array.delete_if do |word|
        word.class != String
        end
end

def count_elements(array)
    array.group_by(&:itself).map {|k, v| k.merge(count: v.length)}
 end


def find_cool(cool)
    cool.select {|hash| hash if hash.has_value?("cool")}
end

def merge_data(keys, data)
    merged = []
    keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
    merged
end


def organize_schools(schools)
    #locations = []
    #schools.each do |school, location|
    #    locations.push(location.values).uniq!
    #end
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end

