# Virus Predictor

# I worked on this challenge with Dan (guide: John Dees).
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' #links this file to the state_data.rb file so it can be accessed as if it is within this file. It differs from require because require, requires an actual path, where as require_relative just needs to file to be in the same directory.

class VirusPredictor
# intializing the class with respective instances variables
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end

# calls two different methods within VirusPredictor, the first with 3 instance variables as arguments, the second with 2 instance variables as arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"
    print " and will spread across the state in #{@speed} months.\n\n"
  end
# makes the following methods only referenceable within the class, until the end of the class
  private
# calculating predicted deaths based on population density and prints a string stating how many deaths for that state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end

    @number_of_deaths = (@population * rate).floor

  end

# calculates what speed the virus spreads based on populations density, and outputs a string stating the speed.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      @speed = 0.5
    elsif @population_density >= 150
      @speed = 1
    elsif @population_density >= 100
      @speed = 1.5
    elsif @population_density >= 50
      @speed = 2
    else
      @speed = 2.5
    end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name, hash|
  VirusPredictor.new(state_name).virus_effects
end


#=======================================================================
# Reflection Section

=begin

- What are the differences between the two different hash syntaxes shown in the state_data file?

The first syntax (literal) allows you to put in any type of object for the keys, in this case strings. The second method using a colon after the key name allows you to create symbols for the keys and assign values.

- What does require_relative do? How is it different from require?

require_relative allows you to reference another file within the same directory as the present file under a particular file name (not needing the file type) and use it within the current ruby code as if it were within the same file. Require is different in that it requires a full path name to be provided to the reference file, otherwise it is the same.

- What are some ways to iterate through a hash?

You can use a for loop, the methods .each, .each_index, or .map.

- When refactoring virus_effects, what stood out to you about the variables, if anything?

The fact that they weren't necessary was something that stood out. Making a variable an instance variable early on in the code removes the need to include them as variables to be passed from one method to another within the class.

- What concept did you most solidify in this challenge?

I feel like I really have a good understanding now of where/when instance variables are useful and how to reference them.

=end