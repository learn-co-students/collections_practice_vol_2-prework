# your code goes here
# your code goes here
def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end

def first_wa(array)
  array.find { |word| word[0..1] == "wa" }
end

def remove_non_strings(array)
  array.select { |element| element.class == String }
end

def count_elements(array)
  result = []
  array.each { |element| result << element }
  result.uniq!.map { |element| element[:count] = array.count(element) }
  result
end

def merge_data(keys, data)
  result = []
  keys.each do |key|
    key.each do |first_name, name|
      data.each do |element|
        element.each do |person, attributes|
          if person == name
            result << key.merge(attributes)
          end
        end
      end
    end
  end
  result
end

def find_cool(cool)
  result = []
  cool.each do |person|
    person.each do |attributes, data|
      if data == "cool"
        result << person
      end
    end
  end
  result
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school_name, attributes|
    current = school_name
    attributes.each do |location, city|
      new_hash[city] = []
    end
  end
  new_hash.each do |city, schools_array|
    schools.each do |school_name, attributes|
      attributes.each do |location, city_of_school|
        if city == city_of_school
          schools_array << school_name
        end
      end
    end
  end
  new_hash
end
