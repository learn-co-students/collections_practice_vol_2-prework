def begins_with_r(tools)
    tools.all? { |tool| tool[0] == 'r' }
end

def contain_a(elements)
    elements.select { |el| el.index("a") }
end

def first_wa(elements)
    elements.find { |el| el[0...2] == "wa" }
end

def remove_non_strings(elements)
    elements.reject { |el| !el.is_a?(String) }
end

def count_elements(elements)
    histo = Hash.new(0)
    elements.collect { |element| histo[element] += 1 }
    histo.collect { |hash, number| hash[:count] = number }
    histo.keys
end

def merge_data(keys, data)
    keys.each { |names|
        data.each { |dta|
            names.merge!(dta[names[:first_name]])
        }
    }
end

def find_cool(hashes)
    hashes.select { |el| el.has_value?("cool")}
end

def organize_schools(schools)
    organized = {}
    schools.each { |school, lochash|
        lochash.each { |sym, location|
            if organized[location]
                organized[location] << school
            else
                organized[location] = []
                organized[location] << school
            end
        }
    }
    organized
end