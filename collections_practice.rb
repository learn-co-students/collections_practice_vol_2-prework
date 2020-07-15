require 'pry'

def begins_with_r(array)
  array.all? do |tool|
    # binding.pry
      tool[0] == "r"
  end
end


def contain_a(array)
  my_arr = []
  array.each do |element|
    if element.include?("a")
      my_arr << element
    end
  end
  my_arr
end


def first_wa(array)
  array.each do |word|
    if word.to_s.include?("wa") #or word[0,2] == "wa"
      return word
    end
  end
end


def remove_non_strings(array)
  new_arr = []
  array.each do |element|
    if (element == "#{element}")
      new_arr << element
    else
      array.delete(element)
    end
  end
  new_arr
end


def count_elements(array)
  count = 0
  arr = []
  array.each do |x|
      # binding.pry
      count = array.count(x)
      arr << x.merge(:count => count)
  end
  arr.uniq!
end

def find_cool(array)
  my_arr = []
  array.each do |key|
    key.each do |k, v|
    # binding.pry
      return my_arr << key if v == "cool"
      # end
    end
  end
end


def merge_data(keys, data)
  merged = []
  keys.each do |i|
    data.first.each do |k,v|
      if i.values[0] == k
        then merged << i.merge(v)
        # binding.pry
      end
    end
  end
  merged
end


# def organize_schools(array)
#   locations = {}
#   array.values.each do |location|
#     # binding.pry
#     locations[location.values[0]] = []
#       array.each do |school, loc|
#       # binding.pry
#       locations[location.values[0]] << school if loc == location
#     end
#   end
#   locations
# end

def organize_schools(array)
  locations = {}
  array.each do |school, loc_hash|
    if locations[loc_hash[:location]]
      locations[loc_hash[:location]] << school if !locations[loc_hash[:location]].include?(school)
    else
      locations[loc_hash[:location]] = []
      locations[loc_hash[:location]] << school
    end
  end
  locations
end


# def organize_schools(schools)
#     locations_hash = {}
#     schools.collect {|k,v|
#       locations_hash[v[:location]] = []}
#         locations_hash.each {|k,v|
#           schools.each {|k1,v1|
#             if k == v1[:location]
#               then v << k1  end}}
#       # binding.pry
# end
