def begins_with_r(tools)
  tools.each do
    |tool|
    if tool.start_with?("r") == false
      return false
    end
  end

  return true
end


def contain_a(arr)
  newArr = []
  arr.each do
    |ele|
    if ele.include?("a")
      newArr << ele
    end
  end

  newArr
end

def first_wa(arr)
  arr.each do
    |ele|
    if ele.class == String
      if ele.start_with?("wa")
        return ele
      end
    end
  end
end

def remove_non_strings(arr)
  arr.delete_if do
    |ele|
    ele.class != String
  end

  return arr
end

def count_elements(arr)
  elementsHash = {}
  elementsArr = []
  count = {:name => "", :count => 0}
  arr.each do
    |hash|
    name = hash[:name]
    if elementsHash.key?(name) == false
      elementsHash[name] = 1
    elsif elementsHash.key?(name)
      elementsHash[name] += 1
    end
  end
  elementsHash.each do
    |name, count|
    newHash = {name: name, count: count}
    elementsArr << newHash
  end

  return elementsArr
end

def merge_data(keys, data)
  mergedArr = []
  keys.each do
    |nameHash|
    name = nameHash[:first_name]
      data.each do
        |personHash|
        personHash.each do
          |othername, profile|
          if name == othername
            newHash = {nameHash.key(name) => name}
            mergedArr << newHash.merge(profile)
          end
        end
    end
  end
  return mergedArr
end

def find_cool(arr)
  coolArr = []
    arr.each do
      |hash|
      if hash[:temperature] == "cool"
        coolArr << hash
      end
    end

    return coolArr
end

def organize_schools(schools)
  organizedHash = {}
  schools.each do
    |schoolName, locationHash|
    location = locationHash[:location]
    if organizedHash.key?(location) == false
      organizedHash[location] = []
      organizedHash[location] << schoolName
    else
      organizedHash[location] << schoolName
    end
  end

  return organizedHash
end
