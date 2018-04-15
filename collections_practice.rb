
def begins_with_r (array)

test_arr = []



    array.each do |elements|

      if elements.start_with?("r")

        test_arr << "pass"
      else

        puts "nope"
        puts elements


     end

   end
   if test_arr.length == array.length
     return true

   else return false
   end

 end

 def contain_a(array)
arr = []
  array.each do |element|
    if element.include?("a")
      puts element
      arr << element
    end
  end
arr
end

def first_wa (array)


  array.each do |elements|
    if elements.to_s.start_with?("wa")
      return elements.to_s
    end
  end

end

def remove_non_strings(array)
  arr = []
  array.each do |elements|

    if elements.to_s == elements
      arr << elements

    end
  end
  arr
end


def count_elements(array)
  comparison_arr = []
  counter = -1
  i = 0
  array.each do |elements|

    comparison_arr << elements

  end

  while i < comparison_arr.length

    if comparison_arr.include?(array[i])

      counter += 1
      i += 1
    end
  end

  return counter

end


def count_elements(array)


array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}

end



  def merge_data(keys, data)
  arr = []

  puts keys
  puts data[0]

   data[0].each do |key, value|

     puts key

     puts value

     value[:first_name] = key

      arr << value

    end

   arr
  end

def find_cool(hashes)

  hashes.select do |hash|

    hash[:temperature] == "cool"

  end

end



def organize_schools(schools)

 hash = {}
puts schools
 schools.each do |name, location_hash|
puts name 
puts location_hash

   current_school = location_hash[:location]

    if hash[current_school] == nil

      hash[current_school] = [name]

    else

     hash[current_school] << name

   end
  end
 hash
end
