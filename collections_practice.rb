# your code goes here
require 'pry'
def begins_with_r(tools_array)
  tools_array.all?{|letter| letter.downcase.start_with?("r")}
end

def contain_a(array)
  array.select{|letter| letter.downcase.include?("a")}
end

def first_wa(array)
  array.find{|letters| letters.downcase[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if{|word| word.class != String}
end

def count_elements(array)
  list = []
  new_array = array.uniq
  new_array.each do |element|
    counter = array.count(element)
    list << {:name => element[:name], :count => counter}
       counts = 0
     end
  list
end

def merge_data(keys, data)
  keys.collect {|info| info.merge(data.reduce[info[:first_name]])}
end

def find_cool(array)
  new_array = []
  array.each do |hash|
    hash.collect do| key, value|
    if value == "cool"
      new_array << hash
    end
    end
  end
  new_array
end

def organize_schools(schools)
new_list = {}
schools.each do |school_name, location_hash|
  city = location_hash[:location]
  new_list[city] = school_name
end
end

def organize_schools(array)
	organize = {}
  array.each do |name, location_city|
	   location = location_city[:location]
      if organize[location]
        organize[location] << name
      else
        organize[location] = []
        organize[location] << name
      end 
   end
organize
end



=begin let(:schools) {
  {
    "flatiron school bk" => {
      :location => "NYC"
    },
    "flatiron school" => {
      :location => "NYC"
    },
    "dev boot camp" => {
      :location => "SF"
    },
    "dev boot camp chicago" => {
      :location => "Chicago"
    },
    "general assembly" => {
      :location => "NYC"
    },
    "Hack Reactor" => {
      :location => "SF"
    }
  }
}
{"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
 "SF"=>["dev boot camp", "Hack Reactor"],
 "Chicago"=>["dev boot camp chicago"]}
=end
