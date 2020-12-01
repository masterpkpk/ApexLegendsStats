class CLI

    attr_accessor :json_data


    def start
        puts "Welcome to the Apex Legends stat viewer!"
        get_user_data
        if @json_data["errors"]
            puts "invalid username. Try again."
            get_user_data
        end
            
        main_menu

    end

    def get_user_data
        platform = gets_platform
        username = gets_username
        data = UrlCreator.new.url_creator(platform, username)
        @json_data = JsonParser.new.parse(data)
    end

    
    def gets_platform
        print "Please enter your platform (xbl/psn/origin) : "
        input = gets.chomp 
        if !["xbl", "psn", "origin"].include? input.downcase
            puts "Please enter a valid platform"
            gets_platform
        else 
            input
        end
    end

    def gets_username
        print "Please enter your Apex Legends username : "
        user = gets.chomp
        if user.include?(' ')
            user.gsub(' ', '%20')
        else 
            user
        end
    end

    def main_menu
        puts "Please enter a number to see the desired data or to exit"
        puts "1. Last Legend Played."
        puts "2. Player Total Kills."
        puts "3. Player Rank."
        puts "4. Exit."
        print "Menu Select: "
        menu_options

    end

    def menu_options
        input = gets.chomp
        if input == "1"
            puts LastPlayedLegend.new.total(@json_data)
            main_menu
        elsif input == "2"
            puts Kills.new.total(@json_data)
            main_menu
        elsif input == "3"
            puts RankScore.new.total(@json_data)
            main_menu
        elsif input == "4"
            puts "Goodbye!"
            exit
        else
            puts "Please enter a valid number."
            menu_options
        end
    end


end

