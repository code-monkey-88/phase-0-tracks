# Virus Predictor

# I worked on this challenge [by myself].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  #this method initialize the instance of the class and imports state data to be stored in instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #this method simply calls two other methods at the same time.
  #release 5 - refactored by removing instance variable arguments across all 3 methods to make DRY.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #this method calculates the number of deaths and rounds down to a whole number.
  def predicted_deaths
    # predicted deaths is solely based on population density
    # is the floor really necessary? shifted it to print statement
    if @population_density >= 200
      number_of_deaths = @population * 0.4
    elsif @population_density >= 150
      number_of_deaths = @population * 0.3
    elsif @population_density >= 100
      number_of_deaths = @population * 0.2
    elsif @population_density >= 50
      number_of_deaths = @population * 0.1
    else
      number_of_deaths = @population * 0.05
    end

    p "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  #this method calculates how long it will take for the virus to spread based on population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end


    puts " the virus will spread across the state in #{speed} months.\n\n"


  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#Release 4 - Create a report for all 50 states in a DRY way. Does this belong inside the class or outside of it? Why?
  # belongs outside of the class due to the scope of the class accepting arguments to store in instance variables.

  STATE_DATA.each do |state, population_values|

    us_state = VirusPredictor.new(state, population_values[:population_density], population_values[:population])
    us_state.virus_effects
  end

#do not name variables with the same names

#=======================================================================
# Reflection Section

# Release 1:

  #using require is usually to import pre-existing code that has been previously installed.
  #require_relative on the other hand is for loading data/files within your project code. Similar to linking sheets in excel.

# Release 2:
  #this is a hash stored within a hash
  #syntax used are both equal "hash-rocket" & "symbol" (=> & :). Difference is symbols are more efficient.

  #Kind of variable is constant variable (STATE DATA), local variable (name = Youssef), instance variable (in classes). Scope is global.

# Release 6:
  #it is a method that can only be called in the context of the current object. A way to prevent side-effects in your code by limiting the scope
  # if you change location of private you can no longer call virus_effects uness you call it within another class method.
  # following error received: my_solution.rb:96:in `block in <main>': private method `virus_effects' called for #<VirusPredictor:0x007f94fb86f938> (NoMethodError)

# Release 8:
  # What are the differences between the two different hash syntaxes shown in the state_data file?
    # their are hash rockets and symbols, both do the same thing but symbols are more efficient for data storage.

  # What does require_relative do? How is it different from require?
    #answer in release 1 above.

  # What are some ways to iterate through a hash?
    #using .each .map! or using a manuel index counter loop

  # When refactoring virus_effects, what stood out to you about the variables, if anything?
    #the instance variables were redundant since their scope can be accessed directly from outside this method thus no arguments were required.

  # What concept did you most solidify in this challenge?
    #scope and DRY code
