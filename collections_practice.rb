require "pry"

def begins_with_r(tools)

     tools.each do |word|
      if word[0] != "r"
       return false
end
end
return true
end

def contain_a(elements)
collect_a = []

   elements.each do |word_a|
    if word_a.include?("a")
    collect_a.push(word_a)
  end
end
  collect_a
end

def first_wa(elements)
word_wa_first=nil
  elements.map do |word_wa|
    if word_wa.to_s.include?("wa")
    return word_wa
end
end
end

def remove_non_strings(array)
  string_array = []
  array.each do |i|
  if i.is_a? String
    string_array.push(i)

end
end
string_array
end

def count_elements(array)
new_array = []

   array.each do |i|

      name_check = new_array.find { |s| s[:name] == i[:name] }
      if name_check
       name_check[:count] += 1

    else
     new_array << {:name => i[:name], :count => 1}
    end
  end

 new_array
end

def merge_data(keys, data)
new_array = []

   data[0].map do |key, values|

    puts "key: #{key}"
    puts "value: #{values}"

       values[:first_name] = key
       new_array << values
   end
  new_array
end

def find_cool(cool)

cool_ary = []

cool.each do |key, values|

  if key.has_value?("cool")
    cool_ary << key
  end
  end
cool_ary
end

def organize_schools(schools)
  location = Hash.new
    schools.each do |school, school_data|

      school_data.each do |location_key, location_data|

        if location[location_data] == nil
        location[location_data] = [school]
        else
          location[location_data] << school
      end
    end
    end
location
end
