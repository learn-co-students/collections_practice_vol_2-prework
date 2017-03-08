def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.find_all do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    !word.is_a?(String)
  end
end

def find_cool(array)
  new_array = []
  array.each do |person|
    person.each do |k, v|
      if v == "cool"
        new_array << person
      end
    end
  end
  new_array
end

# Below uses the very elegant code I found on Stackoverflow...

# def count_elements(array)
#   array.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
#     map { |name, count| { :name=>name, :count=>count } }
# end

# Which bears little resemblance to the solution I came up with! Behold:

def count_elements(array)
  new_array = Array.new
  counts = Hash.new 0 # the argument 0 sets default value for keys
  array.each do |person|
    counts[person] += 1
  end
  counts.each do |k, v|
    k[:count] = v
    new_array << k
  end
  new_array
end

def merge_data(keys, data)
   merged = []
   keys.each do |name|
     data.each do |person|
       person.each do |key, value|
         if key == name[:first_name]
           merged << name.merge!(value)
         end
       end
     end
   end
   merged
 end

 def organize_schools(hash)
   sorted_schools = Hash.new
   hash.each do |school_name, loc|
     loc.each do |k, v|
       sorted_schools[v] = []
     end
   end
   hash.each do |school_name, loc|
     loc.each do |k , v|
       sorted_schools.each do |sorted_loc, sorted_schools|
         if v == sorted_loc
           sorted_schools << school_name
         end
       end
     end
   end
   sorted_schools
 end
