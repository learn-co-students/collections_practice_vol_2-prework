require 'pry'

def begins_with_r(array)
  counter = 0
  array.each do |x|
   if "r" == x[0]
     counter +=1
   end
 end
 counter == array.length
end

def contain_a(array)
  a_ray = []
  array.each do |x|
   if x.include?("a")
     a_ray << x
   end
 end
 a_ray
end

def first_wa(array)
  array.each do |x|
   if "wa" == x[0..1]
     return x
     break
   end
 end
end

def remove_non_strings(array)
  a_ray = []
  array.each do |x|
   if x == x.to_s
     a_ray << x
   end
 end
 a_ray
end

def count_elements(array)
  b = array.uniq
  b.each do |x|
      h = 0
      array.each do |y|
          if x == y
            h +=1
          end
       end
       x[:count] = h
     end
b
end

def merge_data(array1, array2)
  array = []
    array1.each do |x|
      array2.each do |y|
        y.each do |z|
            if x[:first_name] == z[0]
              array << x.merge(z[1])
            end
          end
        end
    end
  return array
end

def find_cool(array)
  a = []
  array.each do |x|
      if x[:temperature] == "cool"
        a << x
      end
  end
  return a
end


def organize_schools(array)
  a = []
  b = {}
  array.each do |x|
    a << x[1][:location]
  end
  local = a.uniq
  local.each do |y|
    b[y] = []
  end
    b.each do |z|
        array.each do |q|
        if z[0] == q[1][:location]
          z[1] << q[0]
        end
      end
    end
  b
end
