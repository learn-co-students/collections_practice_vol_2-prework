# your code goes here
def begins_with_r(array)
  startsWithR = true
  array.each { |item|
    if item.capitalize[0] != "R"
      startsWithR = false
    end
  }
  startsWithR
end

def contain_a(array)
  array.select { |item|
    item.include?("a")
  }
end

def first_wa(array)
  array.find { |item|
    item.to_s.include? "wa"
  }
end

def remove_non_strings(array)
  array.select { |item|
    item.is_a? String
  }
end

def count_elements(array)
  array.uniq.collect do |item|
    item[:count] = array.count(item)
    item
  end
end

def merge_data(keys, data)
  array = []
  i=0
  data[0].each {|key, value|
    array.push(keys[i].merge(value))
    i+=1
  }
  array
end

def find_cool(arrayOfHashes)
  arrayOfHashes.delete_if {|hash| hash[:temperature] != "cool" }
end

def organize_schools(schools)
  organized_schools = {}
  schools.each {|school, attributes|
    if organized_schools[attributes[:location]]
      organized_schools[attributes[:location]].push(school)
    else
      organized_schools[attributes[:location]] = [school]
    end
  }
  organized_schools
end
