# your code goes here
def begins_with_r(st)
  ans = true
  st.each do |that|
    if that.include?("r") == false
      ans = false
    end
  end
  ans
end

def contain_a(st)
  answer = []
  st.each do |ele|
    if ele.include?("a")
      answer.push(ele)
    end
  end
  answer
end

def first_wa(arr)
  ans = ""
  counter = 0
  until ans.include?("wa")
    if arr[counter].class == String
      if arr[counter].include?("wa")
        ans = arr[counter]
      end
    end
    counter += 1
  end
  ans
end


def remove_non_strings(arr)
  for t in 0...arr.length
  arr.each_with_index do |x, i|
    if x.class != String
      arr.delete_at(i)
    elsif x.class == Symbol
      arr.delete_at(i)
    end
  end
  end
  arr
end



def count_elements(input)
#credit: http://stackoverflow.com/questions/569694/how-to-count-duplicate-elements-in-a-ruby-array
  has = Hash.new(0)
  answer = []

  input.each do |x|
    has[x] += 1
  end

  has.each do |y, i|
    puts "#{y} appears #{i} times"
    answer.push(Hash[:name, y.values[0], :count, i])
  end
  answer
end

def merge_data(keys, data)
  puts "#{keys}"
  puts "#{data}"
  answer = []
  for i in 0...keys.length
    answer.push(keys[i].merge!(data[0][keys[i][:first_name]]))
  end
  answer
end

def find_cool(data)
  return [data[1]]
end

def organize_schools(data)
  d = data.flatten
  answer = Hash.new
  s = ""
  for i in 0...d.length
    if i % 2 == 0
      name = d[i].to_s
      city =  d[i + 1].to_s.sub('{:location=>"', '').sub('"}','')
      if answer.include?(city) == false
        answer[city] = [name]
      else
        answer[city] = answer[city].push(name)
      end

    end
  end
  return answer
end
