require "pry"

def begins_with_r(array)
  firstLetters = []
  array.each do |word|
    firstLetters.push(word[0])
  end
  firstLetters.all? do |letter|
    letter == "r"
  end
end

def contain_a(array)
  wordwithA = []
  array.each do |word|
    if word.split("").any? {|x| x == "a"}
      wordwithA.push(word)
    end
  end
  wordwithA
end

def first_wa(array)
  firstWa = []
  array.each do |word|
    if word.to_s[0,2] == "wa"
      firstWa.push(word)
    end
  end
  firstWa[0]
end

def remove_non_strings(array)
  strings = []
  array.each do |word|
    if word.class == String
      strings.push(word)
    end
  end
  strings
end
  
def count_elements(array)
  array.each do |pairone|
    pairone[:count] = 0
    array.each do |pairtwo|
      if pairtwo[:name] == pairone[:name]
        pairone[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(nestedOne, nestedTwo)
  newArray =  []
  nestedOne.each do |names|
    nestedTwo[0][names[:first_name]][:first_name] = names[:first_name]
    newArray << nestedTwo[0][names[:first_name]]
  end
  newArray
end

def find_cool(array)
  coolArray = []
  array.each do |pair|
    pair.each do |key, value|
      if value == "cool"
        coolArray.push(pair)
      end
    end
  end
  coolArray
end

def organize_schools(array)
  a = 1
  organizedSchools = {}
  array.each do |key, value|
    value.each do |location, school|
    if organizedSchools[school].nil?
      organizedSchools[school] = []
    end
    organizedSchools[school].push(key)
    end
  end
  organizedSchools
end