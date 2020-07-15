# your code goes here
require "pry"
def begins_with_r (arr)
  arr.each do |elm|
    return false if elm[0] != "r"
  end
  true
end

def contain_a (arr)
  arr.select do |elm|
    elm.include?("a")
  end
end

def first_wa (arr)
  arr.find {|elm| elm[0..1] == "wa"}
end

def remove_non_strings(arr)
  arr.select {|elm| elm.is_a? String}
end

def count_elements (arr)

tmp = arr.map do |elm|
    elm[:count] = arr.count{|x| x[:name] == elm[:name]}
    elm
    #binding.pry
  end
  tmp.uniq
end

def merge_data(keys, data)
  arr =[]
  keys.each do |elm|
    elm.each do |sym, name|
      #binding.pry
        data.each do |elmo|
          elmo.each do |key, info|
            if key == name
              info[sym] = name
              #binding.pry
              arr << info
            end
          end
        end
      end
    end
  arr
end

def find_cool(cool)
  cool.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(hash)
  orgsch = {}
  hash.each do |school, loc|
    orgsch[loc[:location]] = []
  end
  hash.each do |school, loc|
    orgsch[loc[:location]] << school
  end
  orgsch
end
