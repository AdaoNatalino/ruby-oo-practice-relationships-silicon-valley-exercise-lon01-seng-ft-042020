require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#start
s1 = Startup.new("Tinder de Cafetao", "Adao", "Putaria")
s2 = Startup.new("Lari's Boutique", "Larissa", "Roupas")
s3 = Startup.new("Pramil for All", "Kamis", "Farmaceutico")
s4 = Startup.new("HRB", "Evandro","Baby's roupas")
s5 = Startup.new("Filhas da Accenture", "Mariana", "Accenture")
s6 = Startup.new("Mamamamama", "Bode", "Putaria")



#venture captalist
v1 = VentureCapitalist.new("Ricao", 1500000000)
v2 = VentureCapitalist.new("Pobre", 15000000)
v3 = VentureCapitalist.new("Foda", 2500000000)
v4 = VentureCapitalist.new("No Money", 9000000)
v5 = VentureCapitalist.new("Very Rich", 5500000000)


#founding
f1 = FundingRound.new(s1, "Angel", 100000, v3)
f2 = FundingRound.new(s1, "Series C", 50000, v1)
f3 = FundingRound.new(s1, "Series B", 89000, v2)
f4 = FundingRound.new(s6, "Angel", 500000, v1)


f4 = FundingRound.new(s2, "Series C", 40000, v4)
f5 = FundingRound.new(s2, "Seed", 250000, v1)

f6 = FundingRound.new(s3, "Seed", 10000, v3)
f7 = FundingRound.new(s3, "Angel", 10000000, v5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line