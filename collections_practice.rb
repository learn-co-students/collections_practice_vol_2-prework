# your code goes here

def begins_with_r(array)
  result = true
  array.each do |item|
    if !item.start_with?("r")
      return false
    end
  end
  return result
end

def contain_a(array)
  array.select{|item| item.include? 'a'}
end

def first_wa(array)
  array.find{|item| item[0..1]=="wa"}
end

def remove_non_strings(array)
  array.delete_if {|item| !(item.is_a?(String))}
end

def count_elements(array)
  newHash = {}
  countHash = []
  array.each do |name|
    if newHash[name] != nil
      newHash[name]= newHash[name] + 1
    else
      newHash[name]=1
    end
  end
  newHash.each do |name,count|
    countHold = {}
    countHold[:name] = name[:name]
    countHold[:count] = count
    countHash.push(countHold)
  end
  return countHash
end
#names = ["marry","marry","john"]
#count_elements(names)

def merge_data(keys,data)
data[0].values.map.with_index { |val,i| keys[i].merge(val)}
end

def find_cool(cool)
  newArray = []
  cool.each{
    |x| x.each do |key,val|
      if val == "cool"
        newArray.push(x)
      end
    end
  }
  newArray
end


def organize_schools(schools)
  newHash = {}
  schools.each do |keys,val|
    newHash[val[:location]]=[]
  end
  newHash.each do |city,array|
    schools.each do |name,locHash|
      if locHash[:location]==city
        array.push(name)
      end
    end
  end
  newHash
end
