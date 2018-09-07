require "pry"

def begins_with_r(tools)
  i=0
  while i<tools.length
    if tools[i].start_with?('r')
      i+=1
    else
      return false
    end
  end
  return true
end

def contain_a(array)
  aq=[]
  i=0
  while i<array.length
    if array[i].include?('a')
      aq.push(array[i])
    end
    i+=1
  end
  return aq
end

def first_wa(array)
  i=0
  while i<array.length
    if array[i].to_s.start_with?('wa')
      return array[i]
    end
    i+=1
  end
end

def remove_non_strings(array)
arr=[]
i=0
while i<array.length
  if array[i].class != String
  else
    arr.push(array[i])
  end
  i+=1
end
return arr
end

def find_cool(array)
  a=[]
  array.each do |person|
    person.each do |stat,val|
      if val == "cool"
        ka=person
        a.push(ka)
      end
    end
    end
    return a
  end


def count_elements(array)
  puts array
  arr = []
  hash = Hash.new(0)
  array.each do |person|
   person.each do |useless_word, name|
     hash[name] +=1
    end
   end
   puts hash
   hash.each do |name, counter|
     arr.push( {name: name, count: counter} )
   end
   puts arr
  return arr
 end

#This is data 1 [{:first_name=>"blake"}, {:first_name=>"ashley"}]
#This is data2 [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
#{}"ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]

def merge_data(data1,data2)
arr = []
puts "This is data 1 #{data1}"
puts "This is data2 #{data2}"
hashey = Hash.new(0)
 data1.each do |d1h|
   personname = d1h[:first_name]
   data2.each do |d2hash|
     d2hash.each do |name,statlist|
       if personname == name
         hashster = d1h
         hashster2 = statlist
         hashster3 = hashster.merge(hashster2)
         arr << hashster3
       end
     end
   end
 end
 return arr
end

def organize_schools(schools)
  hashey=Hash.new(0)
  arr = []
  schools.each do |name,loc|
    loc.each do |word_location, actuallocation|
      hashey[actuallocation]=Array.new(0)
    end
  end
  schools.each do |name,loc|
    loc.each do |word_location, actuallocation|
      hashey.each do |location, array|
        if location == actuallocation
          array.push(name)
        end
      end
    end
  end

  puts hashey
return hashey
end
