def begins_with_r(array)
    array.each do |element|
        return false if element[0] != "r"
    end
    return true
end

def contain_a(array)
    array.find_all{|element| element.include?('a')}

end
def first_wa(array)
    array.find_all{|element| element.to_s.include?('wa')}[0]
end
def remove_non_strings(array)
    array.delete_if{|element| !element.is_a?(String)}
end
def count_elements(array)
  array.each do |hash| # hash to inst name, count key  and set/reset count
    hash[:count] = 0
    name = hash[:name]
    array.each do |same_hash|
      if same_hash[:name] == name
        hash[:count] += 1
      end
    end
  end.uniq
end
def merge_data(keys, values)
    arr = []
    keys.each do |person_name|
        name = person_name[:first_name]
        values.each do |person_data|
            if person_data[name]
                merged_person = person_data[name]
                merged_person[:first_name] = name
                arr << merged_person
            end
        end
    end
    arr
end

def find_cool(array)
    arr = []
    array.each do |element|
        arr << element if element[:temperature] == "cool"
    end
    arr
end
def organize_schools(schools)
    organized_schools = {}
    schools.each do |name, location_hash|
        location = location_hash[:location]
        if organized_schools[location]
            organized_schools[location] << name
        else
            organized_schools[location] = []
            organized_schools[location] << name
        end
    end
    organized_schools
end
