def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.class == String && word.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |word|
    word.class == String
  end
end

def count_elements(array)
  array.uniq.each do |word1|
    count = 0
    array.each do |word2|
      if word2 == word1
        count += 1
      end
    end
    word1[:count] = count
  end
end

# def merge_data(keys, data)
#
#
# end
