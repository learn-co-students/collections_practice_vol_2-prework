# your code goes here
def begins_with_r(list)
  arrayLen = list.length
  counter = 0
  list.each do |word|
    if word.start_with?("r")
      counter += 1
    end
  end
  return arrayLen == counter
end

def contain_a(list)
  wordList = []
  list.each do |word|
    if word.include?("a")
      wordList << word
    end
  end
  wordList
end

def first_wa(list)
  list.each do |word|
    if word.to_s.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(list)
  return list.delete_if {|word| !(word.is_a? String)}
end

def count_elements(list)
  list.each do |people|
    people[:count] = 0
    name = people[:name]
    list.each do |person|
      if person[:name] == name
        people[:count] += 1
      end
    end
  end.uniq
end

def merge_data(data1,data2)
  newData =[]
  data1.each do |name|
    name = name[:first_name]
    data2.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        newData << merged_person
      end
    end
  end
  newData
end

def find_cool(hash)
  coolList = []
  hash.each do |person|
    person.each do |attribute,data|
      if data == "cool"
        coolList << person
      end
    end
  end
  coolList
end

def organize_schools(list)
  schoolUpdatedList = {}
  list.each do |school_list,data|
    data.each do |attribute,location|
      if schoolUpdatedList[location].nil?
        schoolUpdatedList[location] = []
      end
      schoolUpdatedList[location] << school_list
    end
  end
  schoolUpdatedList
end

