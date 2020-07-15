# your code goes here
def begins_with_r(tools)
  tools.each do |tool|
    if tool[0] != 'r'
      return false
    end
  end

  true
end

def contain_a(elements)
  matches = []

  elements.each do |element|
    if element.include?('a')
      matches.push(element)
    end
  end

  matches
end

def first_wa(elements)
  elements.each do |element|
    if element[0..1] == 'wa'
      return element
    end
  end
end

def remove_non_strings(elements)
  strings = []

  elements.each do |element|
    if element.class == String
      strings.push(element)
    end
  end

  strings
end

def count_elements(elements)
  count = []

  elements.uniq.each do |element|
    count.push(element)
    element[:count] = elements.count(element)
  end
end

def merge_data(first_names, details)
  merge = []
  for first_name in first_names
    person = first_name
    details[0][first_name[:first_name]].each do |key, value|
      person[key] = value
    end
    merge.push(person)
  end
  merge
end

def find_cool(people)
  found = []

  for person in people
    if person[:temperature] == "cool"
      found.push(person)
    end
  end

  found
end

def organize_schools(schools)
  organized = {}

  schools.each do |key, value|
    if !organized.key?(value[:location])
      organized[value[:location]] = []
    end

    organized[value[:location]].push(key)
  end

  organized
end
