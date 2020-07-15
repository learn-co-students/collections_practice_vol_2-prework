require 'pry'
def begins_with_r(array)
  array.all? { |element| element.start_with?('r') }
end

def contain_a(array)
  array.select { |element| element.include?('a') }
end

def first_wa(array)
  array.find { |element| element.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.select { |element| element == element.to_s }
end

def count_elements(array)
  array.group_by(&:itself).collect do |key, value|
    key.merge(count: value.length)
  end
end

def merge_data(keys, data)
  merged_array = []
  keys.each do |persons|
    first_name = persons[:first_name]
    data.each do |matching_data|
      if matching_data[first_name]
        merged_data = matching_data[first_name]
        merged_data[:first_name] = first_name
        merged_array.push(merged_data)
      end
    end
  end
  merged_array
end

def find_cool(array)
  array.each do |key|
    key[:temperature] == 'cool' ? key : exit
  end
end
