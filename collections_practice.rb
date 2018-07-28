def begins_with_r (array)
   array.all? do |x|
    x.start_with?("r")
  end
end

def contain_a (array)
  array.select do|x|
    x.include?("a")
  end
end

def first_wa(array)
  array.find do |x|
    x.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
  end
end

def count_elements(array)
  total=Hash.new(0)
  array.each do |value|
    total[value] += 1
  end
  total.each do |key,value|
    key[:count] = value
  end
  total.keys
end

def merge_data(keys,data)
  keys.each do |names|
    data.each do |hash|
      names.merge!(hash[names[:first_name]])
    end
  end
end

def find_cool(array)
  array.select do |x|
    x.values.include?("cool")
  end
end

def organize_schools(hash)
  result=Hash.new(0)
  hash.each do |key,value|
    value.each do |k,v|
      if result.keys.include?(v)
        result[v]<<key
      else
        result[v]=[]
        result[v]<<key
      end
    end
  end
  result        
end
