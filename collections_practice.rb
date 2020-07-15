# your code goes here
def begins_with_r(array)
  ans = true
  array.each do |word|
    ans = false if word.start_with?("r") == false
  end
  ans
end

def contain_a(array)
  array.select do |word|
      word if word.include?("a") == true
  end
end

def first_wa(array)
  wa_word = ""
  new_array = array.join(" ").split(" ")
  new_array.find do |word|
    wa_word = word if word.start_with?("wa") == true
  end
  wa_word
end

def remove_non_strings(array)
  array.delete_if { |item|
    item.class != String
  }
end

def count_elements(array)
  #array[0][:count] = 2
  previous = array[0]
  new_array = []
  count = 0
  i = 0
  x = 0
  while i<array.length
    if array[i] == previous
      count += 1
    else
      new_array << previous
      new_array[x][:count] = count
      previous = array[i]
      if i != array.length
        count = 1
      end
      x+=1
    end
    i += 1
  end
  new_array << previous
  new_array[x][:count] = count
  new_array
end

def merge_data(key, data)
  new_array = []
  key.each do |names|
    data.each do |in_array|
      in_array.each do |just_names,traits|
        if just_names == names.values[0]
          traits.each do |keys, values|
            names[keys] = values
            new_array << names
          end
        end
      end
    end
  end
end

def find_cool(array)
  new_array = []
  array.each do |person|
    person.map do |key, value|
      if value == "cool"
        new_array << person
      end
    end
  end
  new_array
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |name, location|
    if new_hash.keys.include?(location.values.join("")) == true
      new_hash[location.values.join("")] << name
    else
      new_hash[location.values.join("")] = [name]
    end
  end
  new_hash
end

#puts begins_with_r(["ruby", "rspec", "sails"])
#puts contain_a(["earth", "fire", "wind", "water", "heart"])
#puts first_wa(["candy", "pepper", "wall", "ball", "wacky"])
#puts remove_non_strings(["blake", 1, :hello])
schools = { "flatiron school bk" => { :location => "NYC" },"flatiron school" => {:location => "NYC" },
    "dev boot camp" => {:location => "SF"}, "dev boot camp chicago" => {:location => "Chicago"}}
organize_schools(schools)
