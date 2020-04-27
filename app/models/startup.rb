class Startup
    @@all = []
    attr_reader :domain
    attr_accessor :name, :founder

    def initialize(name, founder, domain) 
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end
    
    def self.all
        @@all
    end

    def self.find_by_founder(name)
        Startup.all.find {|start| start.founder == name}
    end 

    def self.domains
        Startup.all.map {|start| start.domain}
    end

    def sign_contract(type, investment, venture)
        FundingRouder.new(self, type, investment, venture)
    end

    def funding_rounds
        FundingRound.all.select {|found| found.startup == self}
    end

    def num_funding_rounds
        self.funding_rounds.length
    end

    def total_funds
        self.funding_rounds.map{|funding| funding.investment}.sum
    end

    def investors
        self.funding_rounds.map{|funding| funding.venture}.uniq
    end

    def big_investors
        self.investors.select{|inv| inv.total > 1000000000}
    end
    
end
