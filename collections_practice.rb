def begins_with_r(collection)
  collection.all?{ |item| item.start_with?('r') }
end

def contain_a(collection)
  collection.select{ |item| item.include?('a') }
end 

def first_wa(collection)
  collection.find{ |item| (item.to_s).start_with?('wa') }
end 

def remove_non_strings(collection)
  collection.find_all{ |item| item.is_a?(String) }
end 

def count_elements(collection)
  collection.each_with_object(Hash.new(0)) { |item, counts| counts[item] += 1 }.map { |k, v| k.merge(count: v) }
end 

def merge_data(c1, c2)
  c2[0].values.map.with_index{ |v, i| c1[i].merge(v) }
end 

def find_cool(collection)
  collection.select { |single_hash| (single_hash.values).include?('cool') }
end 

def organize_schools(collection)
  org_hash = {}
  collection.each do |school, value_hash|
    value_hash.each do |k, v|
      org_hash[v] ||= []
      org_hash[v] << school
    end 
  end 
  org_hash
end 