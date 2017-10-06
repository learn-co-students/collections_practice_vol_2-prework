def begins_with_r(array)
  array.each do |tool|
    if tool[0].downcase != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  arr = []
  array.each do |word|
    if word.downcase.include?('a')
      arr << word
    end
  end
  arr
end

def first_wa(array)
  array.each do |word|
    if word.to_s.downcase[0..1] == 'wa'
      return word
    end
  end

end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String}
end

def count_elements(array)
  #This does not seem like the most efficient way to do this.
  arr = []
  hash_count = {}
  array.each do |x|
    if hash_count[x] == nil
      hash_count[x] = 1
    else
      hash_count[x] += 1
    end
  end
  hash_count.each do |key, value|
    clean = {}
    key.each do |name, str|
      clean[name] = str
    end
    clean[:count] = value
    arr << clean
  end
  arr
end

def merge_data(data1, data2)
  arr = []
  data2.each do |x|
    x.each do |first_name, hash_attr|
      data1.each do |hash|
        hash.each do |sym, name|
          if first_name == name
            x[first_name][sym] = name
            arr << x[first_name]
          end
        end
      end
    end
  end
  arr
end


def find_cool(array)
  arr = []
  array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        arr << hash
      end
    end
  end
  arr
end

def organize_schools(school_hash)
  organized_hash = {}
  school_hash.each do |name, location_hash|
    location_hash.each do |sym, city|
    	if organized_hash[city] == nil
    		organized_hash[city] = []
    		organized_hash[city] << name
    	else
    		organized_hash[city] << name
    	end
    end
  end
  organized_hash
end
