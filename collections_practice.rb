# your code goes here
def begins_with_r(element)
  truth = nil
  element.each do |language|
    if language[0] == 'r'
      truth = true
    else truth = false
    end
  end
  truth
end

def contain_a(element)
  new = []
  element.each do |name|
    for i in 0...name.length do
      if name[i] == 'a'
        new.push(name)
      end
    end
  end
  new
end

def first_wa(element)
  element.each do |language|
    for i in 0..1
      if language[0] =='w' && language[1] == 'a'
        return language
      end
    end
  end
end

def remove_non_strings(array)
  array.grep(String)
end

def count_elements(array)
  new = []
  array.each do |names|
    hash = Hash.new
    hash[:count] = array.count(names)
    hash[:name] = names[:name]
    new.push(hash)
  end
  new.uniq()
end

def merge_data(keys, data)
  new_keys_1 = {keys[0].keys.to_a[0] => data.to_a[0].to_a[0][0]}
  new_data_1 = new_keys_1.merge(data[0].values.to_a[0])
  new_keys_2 = {keys[1].keys.to_a[0] => data.to_a[0].to_a[1][0]}
  new_data_2 = new_keys_2.merge(data[0].values.to_a[1])
 [new_data_1, new_data_2]
end

def find_cool(hash)
  new = []
  hash.each do |array|
    temp = array[:temperature]
    if temp == 'cool'
      new.push(array)
    end
  end
  new
end

def organize_schools(schools)
  new = {}
  schools.each do |school, area|
    location = area[:location]
    new[location] = []
  end
  new.each do |area|
    area.each do |area_key, list|
      schools.each do |school_name, area2|
        location = area2[:location]
        if area_key == location
          new[area_key] << school_name
        end
      end
    end
  end
  new
end
