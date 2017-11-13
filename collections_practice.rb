def begins_with_r(array)
  array.all? {|item| item.split('').first=='r'}
end

def contain_a(array)
  array.select {|word| word.include?('a')}
end

def first_wa(array)
  str = array.select {|word| word.class == String}
  str.each do |item|
    if item.split('')[0..1].join == "wa"
      return item
    end
  end
end

def remove_non_strings(array)
  str = array.select {|word| word.class == String}
end

def count_elements(array)
  #iterate through array of hashes
  #get the value of each hash into new array - names
  names = array.each_index.map {|i| array[i].values}
  #count number of times each name shows up and store
  counts = names.each.map {|name| names.count(name)}
  #create new array with each time {:name => name, :count => count}
  name_counts = names.each_with_index.map do |n, idx|
    {:name =>n[0], :count =>counts[idx]}
  end
  #delete duplicates
  name_counts.uniq
end

def merge_data(keys, data)
  #merged1= keys[0].merge(data[0]["blake"])
  #merged2= keys[1].merge(data[0]["ashley"])
  #merged = [merged1, merged2]

  merged = []
  i = 0
  data[0].values.map do |v1|
    merged[i]= keys[i].merge(v1)
    i += 1
  end
  return merged
end

def find_cool(array)
  array.select {|hash| hash.values.include?('cool')}
  #hashes_values = array.map {|hash| hash.values}
  #cool = hashes_values.select {|v| v.include?('cool')}
  #cool_hash = [{:name => cool[0][0], :temperature => cool[0][1]}]
end

def organize_schools(hash)
  new_hash = {}
  nyc_schools = []
  sf_schools = []
  c_schools = []
  #puts nyc = hash.select {|h,v| v=={:location=>"NYC"}}
  #puts sf = hash.select {|h,v| v=={:location=>"SF"}}
  hash.each do |h,v|
    if v=={:location=>"NYC"}
      nyc_schools << h
    elsif v=={:location=>"SF"}
      sf_schools << h
    elsif v=={:location=>"Chicago"}
      c_schools << h
    end
  end
  new_hash = {"NYC"=>nyc_schools,"SF"=>sf_schools,"Chicago"=>c_schools}
end
