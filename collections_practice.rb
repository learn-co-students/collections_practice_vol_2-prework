def begins_with_r(array)# your code goes here
  array.all? {|ele| ele[0] == "r"}
end

def contain_a(array)
  answer = []
  array.map do |ele|
    if ele.include?("a")
      answer.push(ele)
    end
  end
  answer
end

def first_wa(array)
  array.each do |ele|
    if ele[0] == "w" && ele[1] == "a"
      return ele
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|ele| ele.class != String}
end

def count_elements(array)
  array.each do |ele|
    ele[:count] = 0
    title = ele[:name]
    array.each do |hash|
      if hash[:name] == title
        ele[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  result = []
  keys.each do |each_name|
    name = each_name[:first_name]
    data.each do |each_data|
      if each_data[name]
        combined_person = each_data[name]
        combined_person[:first_name] = name
        result << combined_person
      end
    end
  end
  result
end

def find_cool(array)
  result = []
  array.each do |ele|
    result << ele if ele[:temperature] == "cool"
  end
  result
end

def organize_schools(array)
  organized = {}
  array.each do |school, l_hash|
    location = l_hash[:location]
    if organized[location]
      organized[location] << school
    else
      organized[location] = []
      organized[location] << school
    end
  end
  organized
end
