def begins_with_r(tool)
  tool.each do |x|
    if x[0] != "r"
      return false
    end
  end
return true
end# your code goes here

def contain_a(words)
  with_a = []
  words.each do |word|
    if word.include?("a")
      with_a << word
    end
  end
  with_a
end

def first_wa(words)
  words.find { |word| word[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if { |item| item.class != String}
end

def count_elements(array)
  count = Hash.new(0)
  new_array = []
  array.each do |x|
      count[x] += 1
    end
    count.each do |item, occurance|
      new_array << item.merge!(count: occurance)
    end
    new_array
  end


  def merge_data(keys, data)
   unified = []
    keys.each do |numa|
      numa.each do |key, value|
        data.each do |numb|
          numb.each do |k, v|
            if value == k
              unified << numa.merge(v)
            end
          end
        end
      end
    end
    unified
  end

def find_cool(array)
  new_array = []
  array.each do |x|
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
