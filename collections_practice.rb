require "pry"
def begins_with_r(array)
  array.all? {|word| word.downcase.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.downcase.include? "a"}
end

def first_wa(array)
  array.find {|word| word.to_s.downcase.start_with? "wa"}
end

def remove_non_strings(array)
  array.reject {|word| word.class.to_s != "String"}
end

def count_elements(array)
  counts = Hash.new(0)
  count_arr = []
  array.each do |item|
    counts[item] += 1
  end
  counts.each do |item, count|
    count_arr << item.merge!(count: count)
  end
  count_arr
end

def merge_data(d1, d2)
  merged_arr = []
  d1.map! {|k| k.invert}
  d1_hash = d1.reduce Hash.new, :merge
  d2_hash = d2.reduce Hash.new, :merge
  d1_hash.each do |k, v|
    d1_hash[k] = {v => k}
  end
  d1_hash.each do |k, v|
    matched = d2_hash.select {|key, hash| key == k}
    merged_arr << d1_hash[k].merge!(matched[k])
  end
  merged_arr
end

def find_cool(array)
  cool_arr = []
  array.each do |item|
    cool_arr << item if item.has_value? ("cool")
  end
  cool_arr
end

def organize_schools(school_hash)
  org_schools = {}
  locations = school_hash.values.uniq
  locations.each do |item|
    org_schools[item[:location]] = []
  end
  school_hash.each do |name, loc_hash|
    loc = loc_hash[:location]
    org_schools[loc] << name
  end
  org_schools
end
  