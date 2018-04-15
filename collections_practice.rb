# your code goes here
def begins_with_r(array)
  includes_r = true
  array.each do |word|
    if !(word.start_with?("r"))
      includes_r = false
    end
  end
  includes_r
end

def contain_a(array)
  new_array = []
  array.each_with_index do |word, index|
    if word.include?("a")
      new_array << array[index]
    end
  end
  return new_array
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    !(word.is_a?(String))
  end
end

def count_elements(array)
  new_array = array.group_by(&:itself)

  new_array.collect do |key, value|
    key.merge(count: value.length)
  end
end

def merge_data(keys, data)
  merged_data = data[0].values.collect.with_index do |key, value|
    keys[value].merge(key)
  end
  return merged_data
end


def find_cool(hash)
  new_array = []

  hash.each do |key|
    if key.values.include?("cool")
      new_array << key
    end
  end

  new_array
end

def organize_schools(schools)
  schools.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
end
