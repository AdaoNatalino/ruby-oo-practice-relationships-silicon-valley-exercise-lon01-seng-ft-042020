class VentureCapitalist
    @@all = []
    attr_reader
    attr_accessor :name, :total

    def initialize(name, total)
        @name = name
        @total = total 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        #select all with more than 1000000000 ------------------------#get the top 3
        VentureCapitalist.all.select {|vent| vent.total > 1000000000}.max_by(3) {|vent| vent.total}
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, type, investment, self)
    end

    def funding_rounds
        FundingRound.all.select {|fund| fund.venture == self}
    end

    def portfolio
        self.funding_rounds.map{|fund| fund.startup}.uniq
    end

    def biggest_investment
        self.funding_rounds.max_by {|fund| fund.investment}
    end

    def funding_rounds_by_domain(domain)
        self.funding_rounds.select {|fund| fund.startup.domain == domain}
    end

    def invested(domain)
        #self.funding_rounds_by_domain(domain).map {|fund| fund.investment}.sum

        #reduce == .map.sum
        self.funding_rounds_by_domain(domain).reduce(0) {|total, fund| total + fund.investment}
    end
end
