# your code goes here
def begins_with_r(arr)
  arr.all? {|item|
    item.start_with?("r")
  }
end

def contain_a(arr)
  arr.select {|item|
    item.include?("a")
  }
end

def first_wa(arr)
  arr.each {|item|
    if item.to_s.start_with?("wa") 
      return item
    end
  }
end

def remove_non_strings(arr)
  arr.select {|item|
    item.class === "String"
  }
end

def count_elements(arr)
  res={}
  arr.each {|item|
    if res[item[:name]] == nil 
      res[item[:name]] = 1
    else
      res[item[:name]] += 1
    end
  }
  ans = []
  res.each {|k, v|
    ans << {:name=>k, :count=>v}
  }
  ans
end

def merge_data(arr1, arr2)
  
  res = []
  arr1.each {|person|
    key = :first_name
    name = person[key]
    arr2[0].each {|name2, item|
      
      if name == name2
        n = item.clone
        n[:first_name] = name
        res << n
      end
      
    }
    
  }
  res
end

def find_cool(arr)
  arr.select {|item|
    item[:temperature]=== "cool"
  }
end

def organize_schools(arr)
  res ={}
  arr.each{|school, hash|
    if res[hash[:location]] == nil 
      res[hash[:location]] = []
    end
    res[hash[:location]] << school
  }
  res
end

