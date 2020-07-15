# your code goes here
def begins_with_r(array)
  array.each do |ele|
    if ele[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  array.select { |ele| ele.include?("a") }
end

def first_wa(array)
  array.find { |ele| ele[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|ele| !ele.is_a?(String)}
end

def count_elements(array)
  count = Hash.new {0}
  count_hash = {}
  array.each do |ele|
    count[ele] += 1
    count_hash[ele] = {:count => count[ele]}
    if ele.class == Hash
      ele.each { |k,v| count_hash[ele][k] = v}
    else
      count_hash[ele][:name] = ele
    end
  end
  count_hash.values
end

def merge_data(keys, data)
  merged_data = []
  data.each do |info|
    keys.each do |key|
      key.each do |k, v|
        info[v][k] = v
        merged_data << info[v]
      end
    end
  end
  merged_data
end

def find_cool(hash_array)
  hash_array.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, area|
    if organized_schools[area[:location]] == nil
      organized_schools[area[:location]] = [school]
    else
      organized_schools[area[:location]] << school
    end
  end
  organized_schools
end
