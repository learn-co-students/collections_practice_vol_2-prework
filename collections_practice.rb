require 'pry'
def begins_with_r(collection)
  switch =  nil
  collection.each { |item| item.downcase.start_with?("r") ? switch = true : switch = false}
  switch
end

def contain_a(collection)
  collection.collect {|item| item.downcase.include?('a')? item : nil}.compact
end

def first_wa(collection)
  collection.select {|item| item[0..1].downcase.include?("wa")}.first
end

def remove_non_strings(collection)
  collection.select {|item| item.class == String}
end

def count_elements(collection)
  collection.collect  {|item| item[:count] += 1}
end
