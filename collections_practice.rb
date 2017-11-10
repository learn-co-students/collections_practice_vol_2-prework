def begins_with_r(array)
  rChecker = []
  array.each do |word|
    rChecker.push(word[0])
  end
  if rChecker[0] == 'r' && rChecker[1] == 'r' && rChecker[2] == 'r'
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select { |str| str.include?('a') }
end

def first_wa(array)
  array.any? do |word|
    if word[0..1] == 'wa'
      return word
    end
  end
end

def remove_non_strings(array)
  array.each.with_index do |element|
    if element.is_a? String

  end{ |element| x.is_a? Integer }
end
