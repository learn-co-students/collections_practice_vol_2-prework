# your code goes here
def begins_with_r (array)
  starts_with_r = false
  array.each do |element|
    starts_with_r =+ element.chars.first == "r"
  end
  starts_with_r
end

def begins_with_r(array)
  array.all? do |element|
    element.chars.first == "r"
  end
end


def contain_a (array)
  array.select {|elements| elements.include?("a")}
end

def first_wa (array)
  array.find {|element| element[0,2] == "wa"}
end

def remove_non_strings(array)
  array.select {|elements| elements.class == String}
end

def count_elements (array)
  elements = []
  array.each do |element|
     elements_count = array.select {|count_element| count_element == element}.length
     if !elements.any? {|x| x[:name] == element[:name]}
       elements << {:name => element[:name], :count => elements_count}
     end
   end
   elements
 end

 def merge_data(keys,data)
     merged_data = []
     keys.each {|key| merged_data << key.merge(data[0][key.values.join])}
     merged_data
 end

def find_cool (array)
  array.select {|collection| collection.has_value?("cool")}
end

def organize_schools(schools)
  organized_schools={}
  schools.each_pair {|key,value| value.each_value do |location|
    if !organized_schools.key?(location) then organized_schools.store(location,[]) end
      organized_schools[location] << key
  end}
  organized_schools
end

schools = {"flatiron school bk" => {:location => "NYC"},"flatiron school" => {:location =>"NYC"},"dev boot camp"=>{:location =>"SF"}}
cool = [{:name => "blake",:temperature => "cool"},{:name => "ashley", :temperatue => "sort of cool"}]
data = [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"Johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
