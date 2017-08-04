# your code goes here


def begins_with_r(array)

  flag = true
  array.each do |elem|
    if elem[0] != "r"
      flag = false
    end
  end

  return flag
end


def contain_a(array)

array.select { |elem|
  elem.include? 'a'
}

end


def first_wa(array)

  array.find do |elem|
    elem[0..1] == "wa"
  end

end

def remove_non_strings(array)

  newArray = []
  array.each do |elem|
    if elem.is_a? String
      newArray.push(elem)
    end
  end
  return newArray
end

def count_elements(array)

  newHash = {}
  array.each do |hash|
    hash.each do |key, value|
      if newHash[value] == nil
        newHash[value] = 1
      else
        newHash[value] = newHash[value] + 1
      end
    end
  end
  puts newHash

  finalArray = []

  newHash.each { |key, value|
    finalHash = {}
    finalHash[:name]=key
    finalHash[:count]=value
    finalArray.push(finalHash)
  }
  return finalArray

end


def merge_data(v1, v2)

  array = []

  v1.each do |elem|
    elem.each do |key, value|
      v2[0].each do |key2, value2|
        if key2 == value
          newHash = {:first_name => value}
          value2.each do |key3, value3|
            newHash[key3] = value3
          end
          array.push(newHash)
        end
      end
    end
  end




  puts array
  return array
end

v1 = [
  {
     "blake" => {
       :awesomeness => 10,
       :height => "74",
       :last_name => "johnson"
     },
      "ashley" => {
        :awesomeness => 9,
        :height => 60,
        :last_name => "dubs"
     }
   }
]

v2 = [
   {
     :first_name => "blake"
   },
   {
     :first_name => "ashley"
   }
]

merge_data(v1, v2)

def find_cool(cool)

  array = []
  cool.each do |elem|

    elem.each do |key, value|

      if(value == "cool")
        array.push(elem)
      end
    end
  end

  return array

end




def organize_schools(schools)

  newHash = {}
  schools.each do |key, value|
    value.each do |key2, value2|
      if newHash[value2] == nil
        newHash[value2] = [key]
      else
        newHash[value2].push(key)
      end
    end
  end
  return newHash
end
