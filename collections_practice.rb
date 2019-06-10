require "pry"
def organize_schools (schools)
  locs = []
  locs_hash = {}

  schools.each do |s_key, s_data|
    s_data.each_value do |loc|
      locs.push(loc)
    end
  end
  locs.uniq!

  locs.each do |loc|
    locs_hash[loc] = []

    schools.each do |s_key, s_data|
      s_data.each_value do |town|
        if loc == town
          locs_hash[loc].push(s_key)
        end
      end
    end
  end
  return locs_hash
end


def find_cool (ar)
  new_ar = []

  ar.each do |item|
    new_item = {}

    item.each do |key, value|
      if value == "cool"
        new_item.merge!(item)
      end
    end

    if new_item != {}
      new_ar.push(new_item)
    end
  end
  return new_ar
end

def begins_with_r(ar)
  ar.each do |elem|
    if elem[0] != "r"
      return false
    end
  end
  return true
end

def contain_a (ar)
  new_ar = []
  ar.each do |elem|
    if elem.include?("a")
      new_ar.push(elem)
    end
  end
  return new_ar
end

def first_wa (ar)
  ar.each do |elem|
      if elem.to_s.include?('wa')
        return elem
      end
  end
end

def remove_non_strings (ar)
  new_ar = []
  ar.each do |elem|
      if elem.is_a? (String)
        new_ar.push(elem)
      end
  end
  return new_ar
end

def count_elements (ar)
  new_ar = ar.uniq
  new_ar.each do |new_el|
    new_el[:count] = 0
    ar.each do |elem|
      if elem[:name] == new_el[:name]
        new_el[:count] += 1
      end
    end
  end
  return new_ar
end

def merge_data(keys, data)
  ar = []
  item = {}
  keys.each do |ar_key|
  ar_key.each do |key, value|
    item = {}

    item[key] = value
    data.each do |d|
      d.each do |d_key, d_value|
        #binding.pry
        if d_key == value

          item.merge!(d_value)
          #binding.pry

        end
      end
    end
    ar.push(item)
  end
end
  return ar
end
