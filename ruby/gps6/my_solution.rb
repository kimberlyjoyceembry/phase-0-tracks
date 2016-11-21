# Virus Predictor

# I worked on this challenge [by myself].
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative allows you to access other files within the same directory as if they were one file
# Vs require that accesses independent outside sources used in conjunction with the file (such as: API's and such)
require_relative 'state_data'

# Release 2: Analyze state_data
# The difference between the hashes are the => and : used to connect the key-value pairs
# It is referred to as a "hashy-hash" because there are hashes living inside of a larger hash (STATE_DATA, which is a constant: it is written in all caps and should remain the same, otherwise Ruby will warn you; it has a global scope.)

class VirusPredictor
  
# An instance method that is initialized upon the initialization of an instance of the class. It has three parameters: state of origin, population density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# A method that implements two other methods: predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# To ensure that the code below private remains untouched and inaccessible to a user 
  private
  
  
# Method that calculates predicted deaths based on the population density, population, and state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 200 && @population_density >= 50
      number_of_deaths = (@population * (@population_density/50.0).floor * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
  
# Method that calculates the speed of the spread of the virus based on population density and the state
  def speed_of_spread 
  #   #in months
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality.
    speed = 0.0
    
    if @population_density >= 200
      speed += 0.5
    # still trying to figure out an equation to refactor like I did for predicted_deaths method
    # elsif @population_density < 200 && @population_density >= 50 
    #   speed += (((@population_density/(@population_density * 2)) + 0.5))
    elsif @population_density >= 150
      speed += 1 
    elsif @population_density >= 100
      speed += 1.5 
    elsif @population_density >= 50
      speed += 2 
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

# It is still bugging me that I cannot figure out a formula for speed of spread
# You can however use the following instead:
 # def speed_of_spread 
 #    # in months
 #    # We are still perfecting our formula here. The speed is also affected
 #    # by additional factors we haven't added into this functionality.
 #    speed = case @population_density
 #      when 0...50 then 2.5
 #      when 50...10 then 2
 #      when 100...150 then 1.5
 #      when 150...200 then 1
 #      else 0.5
 #    end
  
 #    puts " and will spread across the state in #{speed} months.\n\n"

 #  end

# end

# Release 4 Notes
# The report belongs OUTSIDE of the class 

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, state_info|
report = VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
report.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes show in the state_data file?
  # The difference between the hashes are the => and : used to connect the key-value pairs

# What does require_relative do? How is it different from require?
  # Require_relative allows you to access other files within the same directory as if they were one file
  # Vs require that accesses independent outside sources used in conjunction with the file (such as: API's and such)

# What are some ways to iterate through a hash?
  # keys .each_key
  # values .each_value
  # both keys and values at the same time .each

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # The instance variables weren't necessary as parameters 
  # Numerical correlation between @population_density ranges

# What concept did you most solidify in this challenge?
  # Iteration