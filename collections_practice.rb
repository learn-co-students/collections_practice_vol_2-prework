def begins_with_r(array) #working
    i = 0
    counter = 0
    
    while i < array.size
        if array[i].start_with?("r")
            counter += 1
        else
            i += 1
        end
    i += 1
    end
    counter == array.size
end

def contain_a(array) #working
    array.select do |words|
        words.include?("a")
    end
end

def first_wa(array) #working
    array.find do |starts|
        starts[0] == "w" && starts[1] == "a"
    end
end

def remove_non_strings(array) #working
    array.delete_if do |element|
        element.class != String
    end
end

def count_elements(collection) #working
    new_array = collection.uniq
    new_array.uniq { |val| val.store(:count, collection.count(val)) }
end



def merge_data(val1, val2)
    solution = []  #container for our answer
    val1.each do |person_name|  #iterate through the names hash
        name = person_name[:first_name]   #store the name key to access the person_data hashes in val2
        val2.each do |person_data|  #iterate through the person_data array, containing the information we need to match.
            if person_data[name] #if the array has a valid value with the key of the name we stored earlier
                merger = person_data[name] #use the key to access the first has with the matching information, we store the info as #merger
                merger[:first_name] = name #make a key-value pair with the key of :first_name and the value of the name
                solution << merger  #then push the hashes into an array.
                end
            end
        end
    solution
end



def find_cool(cool) #working
    has = []
    cool.each do |hashy|
    hashy.each do |k,v|
        if v == "cool"
            has << hashy
            end
        end
    end
    has
end

def organize_schools(schools)
    organized_school = {}
    schools.each do |school_name, region|
        location = region[:location]
        region.each do |k, location|
            if organized_school[location] #my mistake was using flat logic and not separating locations with more than one school from others that do
                organized_school[location] << school_name # if there is only one schoool, add as val
            else
            organized_school[location] = [] #otherwise, set the value to an empty array FIRST
            organized_school[location] << school_name #then shovel in any names that match.
            end
        end
        end
    organized_school
end

=begin
 schools = {
 "flatiron school bk" => {
 :location => "NYC"
 },
 "flatiron school" => {
 :location => "NYC"
 },
 "dev boot camp" => {
 :location => "SF"
 },
 "dev boot camp chicago" => {
 :location => "Chicago"
 },
 "general assembly" => {
 :location => "NYC"
 },
 "Hack Reactor" => {
 :location => "SF"
 }
 }

=end








