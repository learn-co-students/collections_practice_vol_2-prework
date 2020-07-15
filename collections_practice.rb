# require "pry"
def begins_with_r(array)
  array.each do |x|
    if x[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  the_a = []
  array.each do |word|
    if word.include?("a") == true
    the_a << word
    end
  end
  the_a
end

def first_wa(array)
  array.find {|x| x[0] == "w" && x[1] == "a"}
end

def remove_non_strings(array)
  array.delete_if{|item| item.class != String}
end

def count_elements(array)
  count = Hash.new(0)
  new_array = []
  array.each do |x|
      count[x] += 1
    end
    count.each do |item, appearance|
      new_array << item.merge!(count: appearance)
    end
    new_array
  end

def merge_data(keys, data)
 one_structure = []
  keys.each do |x|
    x.each do |key, value|
      data.each do |y|
        y.each do |k, v|
          if value == k
            one_structure << x.merge(v)
          end
        end
      end
    end
  end
  one_structure
end

def find_cool(cool)
  # self
  # binding.pry
  new_array = []
  cool.each do |x|
    x.each do |key, value|
      if value == "cool"
        new_array << x
      end
    end
  end
  new_array
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |x, data|
    data.each do |place, site|
      if organized_schools[site] == nil
        organized_schools[site] = [x]
      else
        organized_schools[site].push(x)
      end
    end
  end
  organized_schools
end
