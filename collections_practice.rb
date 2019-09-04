require 'pry'

def begins_with_r(array)
  i=0
  while i < array.length
    if array[i][0] != 'r'
      return false
    end
    i +=1

  end
  true
end

def contain_a(array)
  array2 = []
  array.each do |x|
    if x.include?("a")
      array2 << x
    end
  end

  array2
end

def first_wa(array)

  array.each do |word|
    if word[0..1] == 'wa'
      return word
    end
  end
end

def remove_non_strings(array)

  array.select do |word|
    word.instance_of? String
  end
end

def count_elements(data)
  counter = []
  data.each do |value|

    if counter != []
      counter_names = counter.collect {|hash| hash[:name]}

      if counter_names.include?(value[:name])
          counter.each do |nombre|
            if nombre[:name] == value[:name]
              nombre[:count] = nombre[:count] + 1

            end

          end
      else
          counter << {:name => value[:name], :count => 1 }
      end
    else
      counter << {:name => value[:name], :count => 1 }
    end


  end



  counter



end

def merge_data(array, array2)

   array.each_with_index do |person, i|
     array2[0][person[:first_name]].each do |fact, value|
       array[i][fact] = value
     end
   end

   array

end

def find_cool(array)
  cool_ppl = []
  array.each do |person|
    if person[:temperature] == "cool"
      cool_ppl << person
    end
  end

  cool_ppl

end

def organize_schools(hash)
  organized = {}

  hash.each do |school, location_hash|
    if organized.keys.include?(location_hash[:location])
      organized[location_hash[:location]] << school
    else
      organized[location_hash[:location]] = [school]
    end
  end

  organized

end
