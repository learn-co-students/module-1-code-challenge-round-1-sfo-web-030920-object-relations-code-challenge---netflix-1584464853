# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

new_review = Review.new("p_1", "m_n", 4)

# attr_accessor :viewer, :movie, :rating

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0


# concept_art = Startup.new("Concept-site", "Radniel Padron", "Concept Art Tech")
# diff = Startup.new("Sumn different", "Radniel Padron", "RnD")
# concept_art2 = Startup.new("Concept-site2", "Radniel Padron", "Concept Art Tech")

# vc1 = VentureCapitalist.new("Matt" , 1000000000)
# vc2 = VentureCapitalist.new("Orpah", 100000)
# vc3 = VentureCapitalist.new("Radniel Padron", 183475609213847658920496572348765092374568)

# fr1 = FundingRound.new(concept_art, vc3, "Seed", -1304857620983) #investment== 0
# fr2 = FundingRound.new(concept_art, vc3, "Seed", 1304857620983)
