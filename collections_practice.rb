require 'pry'

def begins_with_r(array)
  bingo = 0
  array.collect do |tools|
    if tools[0] == "r"
      bingo += 1
    end
  end
  bingo == array.count ? true : false
end

def contain_a(array)
  a_powers = []
  array.each do |power|
    if power.include? "a"
      a_powers << power
    end
  end
  a_powers
end

def first_wa(array)
  array.each do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(array)
  removed = array.map do |word|
    if word.is_a?(String)
      word
    end
  end
  removed.compact
end

def count_elements(array)
  counter = []
  array.each do |person|
    if !addCount(counter, person[:name])
      counter << { name: person[:name], count: 1 }
    end
  end
  counter
end

def addCount(array, name)
  array.each do |record|
    if record[:name] == name
      record[:count] += 1
      return true
    end
  end
  false
end

def merge_data(keys, data)
  data_merge = []
  keys.each do |name|
    data.each do |stats|
     data_merge << name.merge(stats[name[:first_name]])
    end
  end
  data_merge
end

def find_cool(array)
  ice_cold = []
  array.each do |person|
    if person.value?("cool")
      ice_cold << person
    end
  end
  ice_cold
end

def organize_schools(schools)
  cities = {}
  schools.each do |name, location|
    if cities.has_key?(location[:location])
      cities[location[:location]] << name
    else
      cities[location[:location]] = [name]
    end
  end
  cities
end
