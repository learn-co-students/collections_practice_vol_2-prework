# your code goes here
def begins_with_r(arr)

    arr.each do |word|
        if !(word.start_with?('r') || word.start_with?('R'))
            return false
        end
    end
    return true

end


def contain_a(arr)

    return arr.select do |word|
        word.include?("a") || word.include?("A")
    end

end

def first_wa(arr)
    arr.each do |word|
        word = word.to_s
        if word.include?("wa") || word.include?("Wa") || word.include?("WA") || word.include?("wA")
            return word
        end
    end
    nil
end

def remove_non_strings(arr)
    return arr.select do |word|
        word.is_a?(String)
    end
end

def count_elements(arr)
    # took me too long to realize this
    #no need to group by
    counts = arr.uniq

    # puts arr.group_map { |obj| obj[:count] = }.to_h.inspect
    counts.each do |obj|
        count = arr.count(obj)
        obj[:count] = count
    end
    counts

end

def merge_data(keys,data)
    #value of keys matches key in data.
    #combine to make array of hashes with instead of the key just a hash with the key included

    ans = []


    #screw time complexity
    keys.each do |person|

        person.each do |k,v|
            #kind of hard code not sure
            data[0].each do |name,att|
                # twice why puts "atts: " + name
                if name == v
                    #puts name
                    temp = att
                    temp[k] = name

                    ans.push(temp)
                end
            end
        end
    end
    ans

end

def find_cool(cool)
    return cool.select{|person|
        #assumption
        person[:temperature] == "cool"


    }

end

#safe inversion for duplicates
class Hash
    def safe_invert
       self.each_with_object({}){|(k,v),o|(o[v]||=[])<<k}
     end
end

def organize_schools(schools)

    # counts = schools.uniq
    #
    # # puts arr.group_map { |obj| obj[:count] = }.to_h.inspect
    # counts.each do |obj|
    #     count = arr.count(obj)
    #     obj[:count] = count
    # end
    # counts
    
    return schools.each{|key,value| schools[key] = value[:location]}.safe_invert
    #return schools.each{|key,value| schools[key]=value[:location] }
    # copy = schools
    # arrayed = []
    # copy.each { |school,location| arrayed.push(location)  }
    # return schools.sort_by{|k,v| v[:location]}

end
