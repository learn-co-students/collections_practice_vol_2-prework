# your code goes here
require "pry"

def begins_with_r(array)
  answer = []
  array.each do |word|
    parsed = word.split(//)
    if parsed.first.downcase == "r"
      answer << "yes"
    else
      answer << "no"
    end
  end
  answer.all? {|word| word.downcase =="yes"}
end

def contain_a(array)
  answer = []
  array.each do |word|
    parsed = word.split(//)
    if parsed.include? "a"
      answer << word
    end
  end
  answer
end

def first_wa (array)
  answer = []
  array.each do |word|
    string = word.to_s
    parsed = string.split(//)
    if parsed.first.downcase == "w"
      if parsed[1].downcase == "a"
        answer << word
      end
    end
  end
  answer[0]
end

def remove_non_strings(array)
  answer = []
  array.each do |word|
    if word.to_s == word
      answer << word
    end
  end
  answer
end

def count_elements(array)
  new_array = []
  array.each do |x|
    new_array << {:name => x[:name], :count=> array.count(x)}
  end
  new_array.uniq
end

def merge_data(struc1, struc2)
  big_thing = []
  struc1.each do |info1|
    struc2.each do |info2|
      info2.each do |person, data|
        if info1.values[0] == person
          big_thing << info1.merge!(data)
        end
      end
    end
  end
end

def find_cool(hash)
  cool_array = []
  hash.each do |element|
    if element.values.last == "cool"
      cool_array << element
    end
  end
  cool_array
end

def organize_schools(schools)
  re_organized_hash = {}
  arrcampsN = []
  arrcampsS = []
  arrcampsC = []
  schools.each do |bootcamps, loc|
    if loc[:location] == "NYC"
      arrcampsN << bootcamps
      re_organized_hash[loc[:location]] = arrcampsN
    elsif loc[:location] == "SF"
      arrcampsS << bootcamps
      re_organized_hash[loc[:location]] = arrcampsS
    else
      arrcampsC << bootcamps
      re_organized_hash[loc[:location]] = arrcampsC
    end
  end
  re_organized_hash
end








