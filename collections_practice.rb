def begins_with_r(array)
  array.all? { |e| e.start_with?("r") }
end

def contain_a(array)
  array.select { |w| w.include?("a")}
end

def first_wa(array)
  first_wa2 = []
  array.each { |sy| first_wa2 << sy.to_s }
  first_wa2.find { |w| w.include?("wa")}
end

def remove_non_strings(array)
    array.delete_if { |i| i.class != String }
end


# [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
# {:name=>"blake", :count=>2}, {:name=>"ashley", :count=>1}

def count_elements(array)
    #creating an empty array to reference later
    output = []
    #iterate over the given array
    array.each do |hash|
        #setting a new variable, name, to the name in the given hash
        name = hash[:name]
        #creating a new hash with nil value
        current_hash = nil
        output.each do |output_hash|
            if output_hash[:name] == name
                current_hash = output_hash
                break
            end
        end
        if current_hash.nil?
            output.push({name: name, count: 1})
        else
            current_hash[:count] += 1
        end
    end
    output
end

def merge_data(keys, data)
  counter = 0
  new_array =[]
  values_for_new_array = data[0].values

  loop do
    new_array << keys[counter].merge(values_for_new_array[counter])
    counter += 1
    break if counter > 1
  end
  new_array
end

def find_cool(cool)
  just_cool = []
  cool.each do |hashes|
     if hashes[:temperature] == "cool"
       just_cool << hashes
     end
  end
  just_cool
end

def organize_schools(schools)
   organized = {}
   school_array = []
   schools.each do |school, location_hash|
     location_hash.each do |location_key, city|

       if not organized[city]
         organized[city] = []
       end

       organized[city] << school
     end
   end
   organized
 end
