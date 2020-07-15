# your code goes here
# #begins_with_r
#     Return true if every element of the tools array starts with an "r" and false otherwise. (FAILED - 1)
#     should return false if there's an element that does not begin with r (FAILED - 2)
def begins_with_r(tools)
  counter = 0
  tools.each do |data|
    counter +=1 if data[0].downcase == 'r'
  end

  counter == tools.size ? true : false

end
#   #contain_a
#     return all elements that contain the letter 'a' (FAILED - 3)
def contain_a(array)
  has_a = []

  array.each do |word|
    has_a << word if word.include?('a')
  end
  has_a
end


#   #first_wa
#     Return the first element that begins with the letters 'wa' (FAILED - 4)
def first_wa(array)

  array.each do |word|
    temp = word.to_s
    return temp if temp.start_with?("wa")
  end

end


#   #remove_non_strings
#     remove anything that's not a string from an array (FAILED - 5)
def remove_non_strings (array)
  temp = []
  array.each do |data|
    if data.class == String
      temp << data
    end
  end
  temp
end


#count_elements
#  count how many times something appears in an array (FAILED - 1)
def count_elements (array)
  result_array = []

  array.each do |data|
    flag =0
    result_array.each do |k|
      if k[:name] == data[:name]
         k[:count] +=1
         flag =1
      end
    end
    if(flag == 0)
      data[:count] = 1
      result_array << data
    end
  end
  result_array
end

# keys =
#   [
#          {
#           :first_name => "blake"
#       },
#          {
#           :first_name => "ashley"
#       }
#   ]
#
#
# data =
#   [
#          {
#            "blake" => {
#               :awesomeness => 10,
#                    :height => "74",
#                 :last_name => "johnson"
#           },
#           "ashley" => {
#               :awesomeness => 9,
#                    :height => 60,
#                 :last_name => "dubs"
#           }
#       }
#   ]




# #merge_data
#   combines two nested data structures into one (FAILED - 2)
def merge_data(k,v)
  merged = []
  k.each do |name|
    v.each do |data|
    # puts "keys #{data.keys} + #{name[:first_name]}"
    # puts data[name[:first_name]]
        temp = data[name[:first_name]]
        merged << name.merge(temp)
    end #v
  end #k
  merged
end

# puts merge_data(keys,data)


# #find_cool
#   find all cool hashes (FAILED - 3)
def find_cool(cool)
  ans = []
  cool.each do |data|
    ans << data if data[:temperature] == "cool"
  end
  ans
end



# #organize_schools
#   organizes the schools by location (FAILED - 4)
def organize_schools (schools)
  ans = {}
  schools.each do |key,data|
    if ans.keys.include?(data[:location])
      ans[data[:location]] << key
    else
      ans[data[:location]] = []
      ans[data[:location]] << key
    end
  end #schools
  ans

end
