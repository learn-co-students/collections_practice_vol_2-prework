# your code goes here
def begins_with_r(array)
  array.all? do |x|
    x.start_with?("r")
  end
  end


def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end

def first_wa(array)
  array.find do |x|
    x[0..1] == ("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
  end
end

def count_elements(array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
  # group all of the identical elements together
   # add the "count" element to the hash
end

def merge_data(v1, v2)
  keys.each do |object|
      matching = object[:first_name]
      puts object
      other_object = data[0][matching]
      other_object.each do |attribute, value|
        object[attribute] = value
      end
    end
  end


def find_cool(array)
  if array[1].values[1] == "cool"
    [array[1]]
  end
end

def organize_schools(schools)
  array = []
  schools.values.to_a.each do |value|
    array << value.values
  end
  school_array = array.flatten.uniq.sort
  h1 = {schools.to_a[0][1].values[0] => [schools.to_a[0][0], schools.to_a[1][0], schools.to_a[4][0]]}
  h2 = {school_array[0] => [schools.to_a[3][0]]}
  h3 = {school_array[2] => [schools.to_a[2][0], schools.to_a[5][0]]}
  h = {}
  h.merge!(h1)
  h.merge!(h2)
  h.merge!(h3)
  h
end
