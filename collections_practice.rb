def begins_with_r (array)
  totally_r = true

  array.each { |el|
    if el[0] != 'r'
      totally_r = false
    end
  }
  totally_r
end

def contain_a (array)
  contains_a = []

  array.each { |el|
    string_to_array = el.split('')
    string_to_array.each { |letter|
      if letter == 'a'
        contains_a << el
      end
    }
  }
  contains_a
end

def first_wa (array)
  array.each { |el|
    if el[0] == 'w'
      if el[1] == 'a'
        return el
      end
    end
  }
  contains_wa
end

def remove_non_strings (array)
  strings_only = []

  array.each { |el|
    if el.class == String
      strings_only << el
    end
  }
  strings_only
end
