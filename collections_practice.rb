def begins_with_r(array)
  array.all? {|x| x[0] == 'r'}
end

def contain_a(array)
  result = []
  array.collect do |x|
    if(x.include? "a")
      result.push(x)
    end
  end
  return result
end

def first_wa(array)
  result = array.find {|x| x[0] == 'w' && x[1] == 'a'}
end

def remove_non_strings(array)
  result = array.select {|x| x.class == String}
end

def count_elements(array)
    result = []
    array.each do |index|
        index[:count] = array.count(index)
    end
    array.each do |index|
        if result.none? {|h| h[:name] == index[:name]}
            result.push(index)
        end
    end
    return result
end

def merge_data(keys, data)
  result = Hash.new
  data.each do |x|
  end
end

def find_cool(cool)

end

def organize_schools(schools)

end
