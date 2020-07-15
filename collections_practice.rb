def begins_with_r(array)
  letters = []
  firsts = []
  bang = []
  array.each do |element|
    letters << element.chars
    letters.each do |char|
    if char.first != "r"
bang << "r"
    end
    end
end

if bang.empty?
return true
else return false
end
end

def contain_a(array)
as = []
  array.each do |element|
    if element.include?("a")
      as << element
  end
end
  as
end

def first_wa(array)
  letters = array.map do |element|
  element.chars
end
end

def first_wa(array)
letters = []
answers = []
  array.each do |element|
  letters << element.to_s.downcase.chars
end
letters.each do |word|
if word[0] == "w" && word[1] == "a"
answers << word.join
break
end
end
return answers[0]
end

def remove_non_strings(array)
answers = []
  array.each do |element|
    if element.to_s == element
    answers << element
  end
  end
  answers
end

def count_elements(array)
 array.each do |element|
 element[:count] = 0
 name = element[:name]
 array.each do |hash|
   if hash[:name] == name
     element[:count] += 1
end
end
end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(hash)
  answer = []
hash.each do |element|
  if element[:temperature] == "cool"
  answer << element
end
end
answer
end

def organize_schools(hash)
answer = {}
hash.each do |school_name, pair|
    loc = pair[:location]
    if answer[loc]
      answer[loc] << school_name
    else
      answer[loc] = []
      answer[loc] << school_name
  end
end
answer
end
