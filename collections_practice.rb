# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?("a")
      new_array.push(word)
    end
  end
  new_array
end

def first_wa(array)
  array.find do |word|
    word[0] == "w" && word[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word != word.to_s
  end
end


def count_elements(elements)
  new_array = []
  newest_array = []
  another_array = []
  hash = {}
  elements.each do |words|
    another_array.push(words.values)
  end
  another_array.each do |word|
    if new_array.include?(word)
      hash[word][:count] += 1
    else
      hash[word] = {name:word[0], count:1}
      new_array.push(word)
    end
  end
  hash.each do |person, attributes|
    newest_array.push(attributes)
  end
  newest_array
end

# elements = [{name:"Jay"},{name:"Bam"},{name:"Jay"},{name:"Bam"},{name:"Jay"},{name:"Bam"},{name:"Amber"}]
# elements = ["Jay","Bam","Jay","Bam","Jay","Bam","Amber"]
# puts count_elements(elements)

def merge_data(keys, data)
  count = 0
  array = []
  name_array = []
  data.each do |person|
    person.each do |name, attributes|
      name_array.push(name)
    end
  end

  while count < keys.length
    array.push(keys[count].merge(data[0][name_array[count]]))
    count += 1
  end
  # person1 = keys[0].merge(data[0]["blake"])
  # person2 = keys[1].merge(data[0]["ashley"])
  # array = [person1,person2]
  array
end


keys =  [
  {:first_name => "blake"},
  {:first_name => "ashley"},
  {:first_name => "borat"}
]

data = [{
           "blake" => {
              :awesomeness => 10,
              :height => "74",
              :last_name => "johnson"
            },
            "ashley" => {
              :awesomeness => 9,
              :height => 60,
              :last_name => "dubs"
            },
            "borat" => {
              :awesomeness => 99,
              :height => 670,
              :last_name => "khazahsthanski"
            }
          }
]
# puts merge_data(keys, data)
# puts keys[0].merge(data[0]["blake"])

def find_cool(cool)
  array = []
  cool.each do |item|
    item.each do |key,value|
      if value == "cool"
        array.push(item)
      end
    end
  end
  array
end

cool = [
    {
      :name => "ashley",
      :temperature => "sort of cool"
    },
    {
      :name => "blake",
      :temperature => "cool"
    }
]
# puts find_cool(cool)

def organize_schools(schools)
  organized_hash = {}
  school_array = []
  schools.each do |school, value|
    value.each do |key, location|
      if organized_hash.has_key?(location)
        organized_hash[location] += ", "+school
      else
        organized_hash[location] = school
      end
    end
  end
  organized_hash.each do |key, value|
    organized_hash[key] = value.split(", ")
  end
  organized_hash
end


schools = {
  "flatiron school bk" => {
    :location => "NYC"
  },
  "flatiron school" => {
    :location => "NYC"
  },
  "dev boot camp" => {
    :location => "SF"
  },
  "dev boot camp chicago" => {
    :location => "Chicago"
  },
  "general assembly" => {
    :location => "NYC"
  },
  "Hack Reactor" => {
    :location => "SF"
  }
}
puts organize_schools(schools)
