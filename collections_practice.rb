require 'pry'

def begins_with_r(array)
  array.each do |word|
    if word[0] != 'r'
      return false
    end
  end
  return true
end

def contain_a(array)
  a_array = []
  array.each do |word|
    if word.include?'a'
      a_array << word
    end
  end
  a_array
end

def first_wa(array)
  array.each do |word|
    if word[0] == 'w' && word[1] == 'a'
      return word
    end
  end
end

def remove_non_strings(array)
  string_array = []
  array.each do |word|
    if word.instance_of? String
      string_array << word
    end
  end
  string_array
end

def count_elements(array)
  
  count_array = array.group_by(&:itself)
  #binding.pry
  count_array.map do |key, value|
    key.merge(count: value.length)
  end
end


def merge_data(keys, data)
  merged_array = data[0].values.map.with_index do |v, i|
    keys[i].merge(v)
    #binding.pry
  end
  merged_array
end

def find_cool(hash)
  cool_array = []
  hash.each do |index|
   if index.values.include? "cool"
     cool_array << index
   end
  end
  cool_array
end

def organize_schools(schools)
  schools.each_with_object({}) do |(name, data), res|
  (res[data[:location]] ||= []) << name
end
  
  
  
end

schools = 
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
  
  organize_schools(schools)
  def test
  puts schools
  location_array = []
  array_of_school_keys = schools.keys
  schools.each do |name, location|
    location_array << location
  end
  puts location_array
  #binding.pry
end
  
  
cool =[
  {
    :name => "ashley",
    :temperature => "sort of cool"
  },
  {
    :name => "blake",
    :temperature => "cool"
  }
]

#find_cool(cool)












def merge_data1(keys, data)
  new_array = []
  var = "blake"
  
  keys.each do |key|
    new_array.push(key)
  end
  new_array[0] 
  binding.pry
  new_array.push(data)
  new_array.flatten
  new_array
end

test_array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]


#puts count_elements(test_array)

def count_elements1(array)
  count_array = []
  array.each do |element|
      if count_array.include? element
        count_array << "hi"
      else
        count = {:count => 1}
        count_array.push(element.merge(count))
        #count_array.push(count)
        binding.pry
    end
  end
  #binding.pry
  count_array
end