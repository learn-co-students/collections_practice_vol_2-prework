require "pry"
def begins_with_r(array)
   array.all? do |element|
     element[0] == "r"
   end
 end
def contain_a(array)
   words_with_a = []

   array.each do |word|
     i = 0
     while i < word.length
       if word[i] == "a"
         words_with_a << word
       end
       i += 1
     end
   end
   words_with_a
 end

def first_wa(array)
  array.each do |word|
    if word.slice(0,2) == "wa"
      return word
    end
  end
end

def remove_non_strings(array)
  array.find_all {|item| item.class == String}
end

def count_elements(array)

  new_array = []
  names = []
  array.each do |hash|
    name = hash[:name]
    if names.include?(name)
      new_array.each do |new_hash|
        new_hash[:count] += 1 if new_hash[:name] == name
      end

    else
      new_array << hash
      hash[:count] = 1
      names << name
      #binding.pry
    end
  end
  new_array
end

def merge_data(keys, data)
  merged_data = []
  data[0].each do |person, values|
    keys.each do |object|
        if person == object.values[0]
          merged_data << values
          values[:first_name] = person
        end
    end
  end
merged_data
end


def find_cool(hashes)
  cool_hashes = hashes.map {|hash| hash if hash[:temperature] == "cool" }.compact
  cool_hashes
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, location|
    if organized_schools[location.fetch(:location)]
      organized_schools[location.fetch(:location)] << school
    else
      organized_schools[location.fetch(:location)] = [school]
    end
  end
  organized_schools
end
