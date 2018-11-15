def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.each do |word| 
    if word.to_s.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(array)
  array.select {|word| word.class == String}
end

def count_elements(array)
  array.group_by(&:itself).map {|k, v| k.merge(count: v.length)} # add the "count" element to the hash
  #.group_by(&:itself) will take all the identical components and put them in a hash together under the same key:
end

def merge_data(array1, array2)
  array3 = []
   array1.each do |hash|
     name = hash[:first_name]
     array2.each do |hash2|
       info = hash2[name]
       array3 << hash.merge(info)
   end
  end
  array3
 end
     
     
  #{ :first_name => "blake"}
  #{"blake" => {:awesomeness => 10, :height => "74",:last_name => "johnson" }
  #[{:awesomeness=>10, :first_name=>"blake", :height=>"74", :last_name=>"johnson"}


def find_cool(array)
  array.select do |hash| hash.any? {|k,v| v == "cool"}
  end
end
# {
#                   :name => "ashley",
#             :temperature => "sort of cool"
#         }

def organize_schools(array)
  new_hash = {}
  array.each do |school, location|
    if new_hash[location[:location]] == nil
      new_hash[location[:location]] = [school]
    else
      new_hash[location[:location]] << school
    end
  end
  new_hash
end

#{"flatiron school bk" => {:location => "NYC"}
#{"NYC"=>["flatiron school bk", "flatiron school", "general assembly"]