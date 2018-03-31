# your code goes here
def begins_with_r (tools_array_r)
    tools_array_r.each do |keys|
        if keys.start_with?("r") == false
            return false
            end
        end
    
    true
end
        
def contain_a (array)
    a_array = []
    array.each do |element|
        a_array.push(element) if element.include?("a")
        #binding.pry
        end
    a_array
end

def first_wa (array)
    wa_array = []
    array.each do |element|
        element = element.to_s
        wa_array.push(element) if element.start_with?("wa")
        #binding.pry
        end
    until wa_array.length == 1
        wa_array.pop
        end
    wa_array.join(",")
end

def remove_non_strings (array)
    string_array = []
    array.each do |element|
        string_array.push(element) if element == element.to_s
        end
    string_array
end

def count_elements (array)
    array.each do |index|
       
       index[:count] = 0
       array.each do |hash|
           index[:count] += 1 if hash[:name] == index[:name]
       end
    end
        
        # binding.pry
        # binding.pry
#            if index[:count] != nil
#                index[:count] += 1`
#            else
#                index[:count] = 1
#                binding.pry
array.uniq
end

def merge_data (keys, values)
    new_array = []
    shift_checker = []
#   keys.each do |person_name|
#          first_name = person_name[:first_name]
          #binding.pry
          
#
#          values.each do |person_info|
#
#
#          keys_data_keys.each do |keys_data_keys_second|
              # binding.pry
#              original_keys_data_keys_second = keys_data_keys_second
#
#              keys_data_keys.each do |keys_data_keys_second|
#
#             shift_checker = keys_data_keys_second.shift
#             binding.pry
#            keys_data_keys_second.unshift(keys) if original_keys_data_keys_second.include?(shift_checker)
            #keys_data_keys_second = keys_data_keys_second[0].merge(keys_data_keys_second[1])
#            new_array.push(keys_data_keys_second)
            #binding.pry
              #keys.merge(keys_data_keys_second)
              #binding.pry
#              end
#       end
#       end
          keys.map do |person_name|
              #binding.pry
              person_name.merge(values[0][person_name[:first_name]])
              end
          
   #new_array.uniq
   #binding.pry
#   new_array.uniq
   #binding.pry
#   new_array = new_array.delate_at(1)
#   new_array = new_array.delate_at(2)
end

def find_cool (cool)
    empty_array = []
    cool.each do |keys|
        empty_array.push(keys) if keys[:temperature].start_with?("cool")
        #binding.pry
    end
    
empty_array
#[{:name=> "blake", :temperature=> "cool"}]
end

def organize_schools (schools)
    nyc_schools =[]
    chicago_schools =[]
    sf_schools = []
    schools.each do |keys, values|
        if values[:location] == "NYC"
            nyc_schools.push(keys)
            elsif values[:location] == "Chicago"
            chicago_schools.push(keys)
        else
            sf_schools.push(keys)
            #binding.pry
        end
        end
    hash = {}
    hash["NYC"] = nyc_schools
    hash["SF"] = sf_schools
    hash["Chicago"] = chicago_schools
    hash
end




