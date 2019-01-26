# your code goes here
def begins_with_r(array)
  check = true
  array.each do |element|
    check = false if element[0] != "r"
  end
  check
end

def contain_a(data)
  data.map {|value| value.index('a') != nil ? value : nil}.compact
end

def first_wa(data)
  data.each do |value|
    if value.slice(0,2) == "wa"
      return value
    end
  end
end

def remove_non_strings(data)
  data.map { |value| value.class == String ? value : nil}.compact
end

def count_elements(data)
  temp = {}
  data.each do |element|
    if temp.has_key?(element[:name])
      temp[element[:name]] += 1
    else
      temp[element[:name]] = 1
    end
  end
  temp.map { |k, v| {"name": k, "count": v} }
end

def merge_data(keys, data)
  temp = []
  data.each do |people|
    people.each do |firstName, person|
      person[:first_name] = firstName
      temp.push (person)
    end
  end
  temp
end

def find_cool(data)
  data.map { |person| person[:temperature] == "cool" ? person : nil }.compact
end

def organize_schools(schools)
  organizesSchools = {}
  schools.each do |name, school_location|
    if organizesSchools.has_key?(school_location[:location])
      organizesSchools[school_location[:location]].push(name)
    else
      organizesSchools[school_location[:location]] = [name]
    end
  end
  organizesSchools
end
