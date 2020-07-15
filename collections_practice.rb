# your code goes here
def begins_with_r(arr)
  bool = true
  arr.each do |i|
    if i.start_with?("r")
      bool = true
    elsif i.start_with?("r") == false
      return false
    end
  end
  bool
end

def contain_a(arr)
  arr.select do |i|
    i.include? "a"
  end
end

def first_wa(arr)
  arr.find do |i|
    i.to_s.start_with?("wa")
  end
end

def remove_non_strings(arr)
  arr.delete_if do |i|
    i.is_a?(String) == false
  end
end

def count_elements(arr)
  temp = arr.uniq 
  temp.each do |t|
    count = 0
    arr.each do |a|
      if a == t 
        count += 1
      end 
    end 
    t[:count] = count
  end
end

def merge_data(keys, data)
  keys.each do |key|
    data.each do |d| 
      d.each do |ky, val|
        if key[:first_name] == ky 
          val.each do |k,v|
            key[k] = v 
          end 
        end 
      end 
    end 
  end 
end

def find_cool(arr)
  arr.select do |h|
    h[:temperature] == "cool"
  end
end 

def organize_schools(shools)
  organized_schools = schools.group_by {|k,v| v[:location]}
  organized_schools.each do |k,v|
    v.flatten!
    v.each do |element|
      v.delete(element) if element.is_a?(Hash)
    end
  end 
end


