class Player

    attr_accessor :name, :platform, :rank, :kills, :legend
    @@all = []
    
    
    def initialize(name, platform, rank, kills, legend)
        @name = name
        @platform = platform
        @rank = rank
        @kills = kills
        @legend = legend
        
    end

    def self.all
        @@all = self
    end
end