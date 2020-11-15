require "pry"
class API
          def self.fetch_api
               url = "https://travelbriefing.org/countries.json"
               uri = URI(url)
               response = Net::HTTP.get(uri)
               travel_array = JSON.parse(response)
               travel_array.each do |travel|
               Travel.new(travel) 
               
            end
      end

      def self.one_travel(url)
          uri = URI(url)
          response = Net::HTTP.get(uri)
          travel_array = JSON.parse(response)
      end
  end

     
       


