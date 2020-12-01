class CLI

    def start
        puts "Welcome to the Apex Legends Stat viewer!"
        puts "Please enter your desired platform."
        platform = gets.chomp
    end

end

CLI.new.start