require 'pry'

def begins_with_r(tools_array)
  tools_array.collect do |element|
    if element.start_with?("r") == false
      return false
    end
  end
true
end

def contain_a(tools_array)
  array = []
  tools_array.collect do |element|
    if element.include?("a")
      array<<element
    end
  end
array
end

def first_wa(tools_array)
  tools_array.collect do |element|
    if element.to_s.start_with?("wa") == true
      return element
    end
  end
end

def remove_non_strings(tools_array)
  tools_array.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(tools_array)
  tools_array.group_by(&:itself).map{|key, value| key.merge(count: value.length)}
end


def merge_data(nest1, nest2)
new_array = []
  nest1.each do |hash|
    name = hash[:first_name]
    nest2.each do |hash2|
      if hash2[name]
          hash2[name][:first_name]  = name
          new_array<<hash2[name] #hash2["blake"] hash2 == {blake => {:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"} }
      end
    end
    # then we can add info
  end
  new_array
end


# nest1[{:first_name=>"blake"}, {:first_name=>"ashley"}]
# nest2[{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
#  "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]


 def find_cool(cool_array)
   cool_array.select do |hash|
      hash[:temperature] == "cool"
  end
end

def organize_schools(schools)
  my_schools = {}
    schools.each do |key, value|
      value.each do |key2, value2|
        if my_schools[value2]
            my_schools[value2]<<key
        else
          my_schools[value2] = []
          my_schools[value2]<<key
        end
      end
    end
my_schools
end
