require "pry"
class Travel
    attr_accessor  :name, :url, :health, :weather, :language, :visa_requirements, :electric_sockets, :currency, :vaccines
    
    @@all = []

    
    def initialize(attr_hash)
        attr_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find do |travel|
            travel.name.downcase == name
        end
    end

        def update
            data = API.one_travel(self.url)

             self.weather = data["timezone"]["name"]
    
             self.language = data["language"][0]["language"]

             self.currency = data["currency"]["code"]
             vaccine_arr = []
                data["vaccinations"].each do |vaccine|
                    vaccine_arr << vaccine["name"]
                end
             self.vaccines = vaccine_arr
         end
end









