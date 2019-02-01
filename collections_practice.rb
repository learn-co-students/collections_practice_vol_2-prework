# your code goes here

def begins_with_r(array)
    boo = true
    array.each do |element|
        if element.start_with?("r") == false
            boo = false
        end
    end
    return boo
end

def contain_a(array)
    #create container for elements with a
    a_elements = []
    array.each do |element|
        if element.include?("a") == true
            a_elements.push(element)
        end
    end
    return a_elements
end

def first_wa(array)
    #make values comparable
    string_array = []
    array.each do |element|
        string_array.push(element.to_s)
    end
    #search for "wa"
    string_array.each do |element|
        if element.start_with?("wa") == true
            return element
        end
    end
end

def remove_non_strings(array)
    #check if item is a string, remove if not
    #init new array to store strings
    s_array = []
    array.each do |element|
        if element.is_a?(String)
            s_array.push(element)
        end
    end
    array = s_array
    return array
end

def count_elements(array)
    #build array to store unique objects, one to store counts, put together as single object in array
    o_array = []
    o_count_array = []

    #build array of distinct objects by checking if object in array == any object in 0_array, increment counter as well
    array.each do |element|
        if o_array.include?(element)
        else
            o_array.push(element)
        end
    end

    #Initialize array counter
    o_array.each do |element|
        o_count_array.push(0)
    end
    #Move along increment array, for each element search initial array for matching elements, increment if found
    o_array.each_with_index do |element, index|
        array.each do |a_element|
            if element == a_element
                o_count_array[index] += 1
            end
        end
    end

    #add count information into distinct hash elements that have a :count key and number value
    o_array.each_with_index do |element, index|
        element[:count] = o_count_array[index]
    end
    return o_array
end

def merge_data(keys, data)
    #init object to hold combined data
    names_a = []
    combined_a = []


    #create initial object layer from keys to combined structure
    keys.each do |element|
        combined_a.push(element)
    end
    #create another object layer that is just the keys per name
    #track objects
    i = 0
    data.each do |element|
        element.each do |person, data|
            names_a[i] = data
            i+=1
        end
    end
    names_a.each_with_index do |element, index|
        element.each do |key, value|
            combined_a[index][key] = value
        end
    end
    return combined_a


    #add key information into combined object

end

def find_cool(array)
    #we are dealing with an array of hashes with one level of keys and values
    cool_hashes = []
    array.each do |element|
        element.each do |key, value|
            if value == "cool"
                cool_hashes.push(element)
            end
        end
    end
    return cool_hashes
end

def organize_schools(hash)

    #  let(:schools) {
    #    {
    #      "flatiron school bk" => {
    #        :location => "NYC"
    #      },
    #      "flatiron school" => {
    #        :location => "NYC"
    #      },
    #      "dev boot camp" => {
    #        :location => "SF"
    #      },
    #      "dev boot camp chicago" => {
    #        :location => "Chicago"
    #      },
    #      "general assembly" => {
    #        :location => "NYC"
    #      },
    #      "Hack Reactor" => {
    #        :location => "SF"
    #      }
    #    }
    #  }
    #  let(:organized_schools) {
    #    {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
    #     "SF"=>["dev boot camp", "Hack Reactor"],
    #     "Chicago"=>["dev boot camp chicago"]}
    #  }

    #Create an object that is the location values as keys with an empty array as the value
    organized_schools = {}
    hash.each do |school, info|
        info.each do |key, location|
            organized_schools[location] = []
        end
    end

    #iterate through the schools hash and for each school that has the appropriate location, push that school into the appropriate array
    hash.each do |school, info|
        info.each do |key, location|
            organized_schools[location].push(school)
        end
    end
    return organized_schools
end



