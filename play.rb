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

#find_cool find all cool hashes
def find_cool(hashes)
  hashes.collect do |hash|
    hash.has_value?("cool")
  end
end
