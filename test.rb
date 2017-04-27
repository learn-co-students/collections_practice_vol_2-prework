keys = [{:first_name => "blake"}, {:first_name => "ashley"}] #array of 2 hashes
data = [{"blake" => { #array of ONE hash, each with 3 values per key 
            :awesomeness => 10, #keys are blake and ashley
            :height => "74",
            :last_name => "johnson"},
          "ashley" => {
            :awesomeness => 9,
            :height => 60,
            :last_name => "dubs"
          }
        }
      ]

      #WE WANT:

  merged_data = [         #array of 2 hashes
               {
                 :first_name => "blake",
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
               {
                 :first_name => "ashley",
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
