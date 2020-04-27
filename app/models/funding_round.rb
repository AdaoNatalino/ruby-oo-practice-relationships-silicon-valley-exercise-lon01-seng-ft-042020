class FundingRound
    @@all = []
    attr_reader :startup, :venture, :type, :investment

    def initialize(startup, type, investment, venture) 
        @startup = startup
        @type = type
        @investment = investment
        @venture = venture
        @@all << self
    end

    def self.all
        @@all
    end
end
