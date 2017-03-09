require 'pry'

def begins_with_r(array)

array.all? { |e| e.start_with?("r") }

end

def contain_a(array)

array2 = []

array.collect do |word|

  if  word.include?("a")

    array2 << word

  end

    end

array2

end

def first_wa(array)

  item = nil
  array.each do |element|
    if element.match(/wa/)
      item = element
      break
    end
  end
  item
end

def remove_non_strings(array)
container = []

array.each do |thing|

  container << thing if thing.is_a?(String)

end

container
end

def count_elements(array)

  counted_people = []

  array.each do |person|

    if counted_people.count == 0 || counted_people.last[:name] != person[:name]

      counted_people << person

      counted_people.last.merge!(:count => 1)

    else

      counted_people.each do |element|

        if element[:name] == person[:name]

          element[:count] += 1
        end




      end

    end

  end

counted_people

end


def merge_data(one_thing, another)

  merged_info = []

  one_thing.each do |name_hash|
    another.each do |stats|
      stats.each do |name, info|
        if name_hash[:first_name] == name

          merged_info << name_hash.merge(info)

        end

      end

    end

  end

  merged_info

end

def find_cool(array)

cool_people = []
  array.each do |people|


    people.each do |key, value|

    if value == "cool"

      cool_people << people

    end

    end



   end
cool_people
end

def organize_schools(array)

  organized = {}

array.each do |school, place|
  place.each do |label, city|

    if organized.include?(city) == false

      organized[city] = []

      organized[city] << school


    else

      organized[city] << school

    end

  end

end
organized

end
