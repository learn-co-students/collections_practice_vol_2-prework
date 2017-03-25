def begins_with_r(array)
  array.all?{ |e| e.start_with?('r') }
end

def contain_a(array)
  array.select { |e| e.include?('a') }
end

def first_wa(array)
  array.each { |e| return e if e.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.select { |e| e.is_a? String }
end

def count_elements(array)
  array.uniq.each { |e| e[:count] = array.count(e)}
end

def merge_data(key, data)
  result = []
  key.each do |key|
    data.each do |data|
      result << key.merge(data[key.values.join])
    end
  end
  result
end

def find_cool(cool)
  cool.select { |e| e[:temperature] == "cool"}
end

def organize_schools(schools)
  organized = {}

  schools.each do |name, location|
    organized[location.values[0]] ? organized[location.values[0]] << name : organized[location.values[0]] = [name]
  end
  organized
end
