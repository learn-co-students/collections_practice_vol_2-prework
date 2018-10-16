def begins_with_r(arr)

  arr.all? do |x|
    x[0] == "r"
  end
end

def contain_a(arr)
  arr.select do |x|
    x.include?("a")
  end
end

def first_wa(arr)
  arr.find do |x|
    x[0..1] == "wa"
  end
end

def remove_non_strings(arr)
  arr.delete_if {|x| x.class != String}

end

def count_elements(arr)
  arr.group_by(&:itself).map { |k,v| k.merge(count: v.length)  }
end

def merge_data(key, data)

    merge = []
    data[0].each do |key, value|
      value[:first_name] = key
        merge << value
  end
  merge
end

def find_cool(cool)

  new_cool = []

  cool.each do |hash|
    if hash[:temperature] == "cool"
        new_cool << cool[1]

    end
  end
  new_cool
end

def organize_schools(schools)
  new_school = {}
  schools.each do |bootcamp, city|
    location = city[:location]
    new_school[location] ||= []
    new_school[location] << bootcamp
  end
  new_school
end
