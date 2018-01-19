require 'pry'

def begins_with_r(array)
  array.each do |item|
    if item.start_with?("r") == false
      return false
    end
  end
  return true
end

def contain_a(array)
  a_array = []
  array.each do |item|
    if item.include?("a")
      a_array << item
    end
  end
  return a_array
end

def first_wa(array)
  array.each do |item|
    if item.class != String
      string = item.to_s
      if string.include?("wa")
        return string
      end
    elsif item.include?("wa")
        return item
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item.class != String
  end
end

def count_elements(array)
  counts = []
  array.each do |item|
    counts << item.merge({:count => array.count(item)})
  end
  counts.uniq
end

def merge_data(keys, data)
  data[0].values.map.with_index do |item, i|
    keys[i].merge(item)
  end
end

def find_cool(array)
  cool_array = []
  array.each do |hash|
    if hash.has_value?("cool")
    cool_array << hash
  end
  end
  cool_array
end
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
def organize_schools(hash)
  organized = Hash.new 0
  array = []
  hash.each do |hash|
    array << hash[1][:location]
  end
  uniq_array = array.uniq
  uniq_array.each do |location|
    organized[location] = []
  end
  hash.each do |school, data|
    if data[:location] == "NYC"
      organized["NYC"] << school
    elsif data[:location] == "SF"
      organized["SF"] << school
    elsif data[:location] == "Chicago"
      organized["Chicago"] << school
  end
end
  organized
end
