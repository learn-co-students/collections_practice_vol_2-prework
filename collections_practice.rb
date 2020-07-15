require 'pry'

def begins_with_r(array)

  array.all? {|word| word.start_with?("r")}

end

def contain_a(array)
  new_array = []
  array.each { |word| new_array << word if word.include?("a") }
  new_array
end

def first_wa(array)
   array.detect {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|word| word.class != String}
end

def count_elements(array)
  name_list_array = []
  count_array = []
  count_hash = Hash.new(0)

  array.each {|hash| name_list_array << hash[:name]}
  name_list_array.each { |name| count_hash[name] += 1 }
  count_hash.each { |name_value, count_value| count_array << {name:name_value, count:count_value} }
  count_array
end

=begin
[{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])
=end

def merge_data(keys, data)
  keys.collect {|hash| hash.merge(data.reduce[hash[:first_name]])}
end
=begin
keys = [{:first_name=>"blake"},
        {:first_name=>"ashley"}]
data = [{"blake"=>  { :awesomeness=>10,
                      :height=>"74",
                      :last_name=>"johnson"},
        "ashley"=>  { :awesomeness=>9,
                      :height=>60,
                      :last_name=>"dubs"}}]
=end

def find_cool(array)
  new_array = []
  array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        new_array << hash
      end
    end
  end
  new_array
end

=begin
[{:name=>"ashley", :temperature=>"sort of cool"},
 {:name=>"blake", :temperature=>"cool"}]
=end

def organize_schools(schools)
  new_array = Hash.new
    schools.each do |name_school, complete_location|
      complete_location.each do |location, city_name|
        new_array[city_name] == nil ? new_array[city_name] = [name_school] : new_array[city_name] << name_school  
      end
    end
new_array
end

=begin
{"flatiron school bk"=>{:location=>"NYC"},
 "flatiron school"=>{:location=>"NYC"},
 "dev boot camp"=>{:location=>"SF"},
 "dev boot camp chicago"=>{:location=>"Chicago"},
 "general assembly"=>{:location=>"NYC"},
 "Hack Reactor"=>{:location=>"SF"}
=end
