
# #merge_data
#   combines two nested data structures into one (FAILED - 7)
# **************[{:first_name=>"blake"}, {:first_name=>"ashley"}]
# **************[{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last
# _name=>"dubs"}}]


# expected: [{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley", :awesom
# eness=>9, :height=>60, :last_name=>"dubs"}]

def merge_data(collection1,collection2)
  puts "**************#{collection1}"
  puts "**************#{collection2}"
  puts "*****************#{collection2[collection1.first[:first_name]]}"
end



# #remove_non_strings
#   remove anything that's not a string from an array (FAILED - 5)
def remove_non_strings(collection)
  collection.find_all {|i| i.is_a? String}
end
# #count_elements
#   count how many times something appears in an array (FAILED - 6)
def count_elements(collection)
  # puts "*************************#{collection.count({:name => "blake"})}"
  newarr = collection.uniq
  counter = 0
  while counter < newarr.length
    # puts "***********#{newarr[counter]} :: #{collection.count(newarr[counter])}"
    # newarr[counter] << {:count => collection.count(newarr[counter])} #not work
    newarr[counter][:count] = collection.count(newarr[counter])
    counter +=1
  end
  # puts "********************#{newarr}"
  newarr
end
# #find_cool
#   find all cool hashes (FAILED - 8)
# #organize_schools
#   organizes the schools by location (FAILED - 9)






#
# #begins_with_r
#   Return true if every element of the tools array starts with an "r" and false otherwise. (FAILED - 1)
#   should return false if there's an element that does not begin with r (FAILED - 2)
def begins_with_r(collection)
  !collection.detect {|i| i[0]!="r"}
end

# #contain_a
#   return all elements that contain the letter 'a' (FAILED - 3)
def contain_a(collection)
  collection.find_all {|i| i.include?("a")}
end
# #first_wa
#   Return the first element that begins with the letters 'wa' (FAILED - 4)
def first_wa(collection)
  # collection.find {|i| i.start_with?("wa")} # cannot use oncollections with symbols
  # value = collection.find {|i| i[0]=="w" && i[1]==["a"]} #getting nil

  # value = collection.select {|i| i[0]=="w" && i[1]==["a"]} #getting nil
  value = collection.select {|i| i[0]=="w" } #strange why the && doesnt get anything but without it does
  value.find {|i| i[1]=="a"}
  # puts "***********************************#{collection[1][0]}"
  # puts "***********************************#{value}"
end
