def begins_with_r(array)
  i = 0
  array.each do |a|
    if a.start_with?("r")
      i += 1
    end
  end
  if i == array.count
    true
  else
    false
  end
end

def contain_a(array)
  bff_array = []
  array.each do |a|
    if a.include?("a")
      bff_array << a
    end
  end
  bff_array
end

def first_wa(array)
  warray = []
  array.each do |a|
    if a[0] == "w" && a[1] == "a"
      warray << a
    end
  end
  warray[0]
end

def remove_non_strings(array)
  bff_array = []
  array.each do |a|
    if a.kind_of?(String)
      bff_array << a
    end
  end
  bff_array
end

array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]

def count_elements(array)
  rad_array = array.uniq
  rad_array.each do |k|
      counter = array.count(k)
      k[:count] = counter
  end
  rad_array
end

def merge_data(a, b)
  new_a = []
  a.each do |x|
    x.each do |i, k|
      new_a << {i => k}
    end
  end
  b.each do |y|
    y.each do |n, m|
      new_a.each do |q|
        if q.value?(n)
          m.each do |key, value|
            q[key] = value
          end
        end
      end
    end
  end
  new_a
end

def find_cool(array)
  return_v = []
  array.each { |k|
    k.each { |key, value|
      if value == "cool"
        return_v << k
      end
    }
  }
  return_v
end

def organize_schools(schools)
  groovy_h = {}
  fun_a = []
  another_fun_a = []
  schools.each do |k, i|
    i.each do |key, value|
      another_fun_a << value
      another_fun_a.uniq!
    end
  end
  another_fun_a.each do |x|
    schools.each do |k, i|
      i.each do |key, value|
        if schools[k][key] == x
          fun_a << k
          groovy_h[value] = fun_a
        end
      end
    end
    fun_a = []
  end
  groovy_h
end
