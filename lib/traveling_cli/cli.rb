require 'pry'
class CLI
attr_accessor :user 
    def greeting
        puts "Welcome To Your Journy!"
        puts "***********************"
        puts " Please enter your fullname"
        @user = gets.chomp.strip.upcase
        puts " "
        puts "Welcome #{@user}: If you are intrested in traveling the world enter 'travel'"
        puts " "
        puts "If you are not intrsted in traveling enter 'exit'"
        API.fetch_api
        info
end

    def info
         input = gets.strip.downcase

         if input == "travel"
            travel_list
            info
         elsif input == "exit"
            log_out
         else
            invalid_entry
    end
end

    def travel_list
       Travel.all.each_with_index do |travel, index|
        puts "#{index + 1}. #{travel.name}"
       end
        puts " "
        puts "Please choose the countrie you would like to get information about "
        puts "...Where would you like to travel to:"
        puts " "
        input = gets.strip.downcase
        travel_selection(input)
    end

    def travel_selection(travel)
      countrie = Travel.find_by_name(travel)
      countrie.update
        #puts "Url:      #{countrie.url}"
        #puts "advise:  #{countrie.advise}"
        #puts "Health:   #{countrie.health}"
        puts "Weather:   #{countrie.weather}"
        puts "Language:  #{countrie.language}" 
        puts "Currency:  #{countrie.currency}"
        puts "Vaccines:  #{countrie.vaccines}"
       # puts "Visa_requirements: #{countrie.visa_requirements}"
        #puts "Electric_sockets:  #{countrie.electric_sockets}"
      
    end

    def invalid_entry
        puts "Invalid Entry"
        puts "If u would like to continue please enter the correct information"
        info
     end

    def log_out
        puts " "
        puts "You are know logged out"
        puts "Thank you for using thise application"
        puts " "
        puts "Goodbye"
        
    end
end