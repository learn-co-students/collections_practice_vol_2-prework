def begins_with_r(ary)
  ary.all? { |el| el[0].downcase == 'r' }
end

def contain_a(ary)
  ary.select { |el| el.downcase.include?('a') }
end

def first_wa(ary)
  ary.find { |el| el.to_s.downcase.start_with?('wa') }
end

def remove_non_strings(ary)
  ary.select { |el| el.class == String }
end

def count_elements(ary)
  result = ary.uniq
  result.map do |el|
    key = el.keys[0]
    { key => el[key] , count: ary.count(el) }
  end
end

def merge_data(keys, data)
  result = []
  keys.each.with_index do |key, i|
    hsh = data.first[key.values.first]
    attribute = key.keys.first
    result[i] = { attribute => key[attribute] }
    hsh.each do |k, v|
      result[i][k] = v
    end
  end
  result
end

def find_cool(ary)
  ary.find_all do |hsh|
    hsh[:temperature] == 'cool'
  end
end

def organize_schools(hsh)
  result = hsh.group_by do |el|
    el.last[:location]
  end
  result.each do |k, v|
    result[k] = v.flatten.reject { |el| el.class == Hash }
  end
end
