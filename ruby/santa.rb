class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
  end

#age Santa by 1 year
  def celebrate_birthday
    current_age = @age + 1
    puts "Santa is now #{current_age}"
  end

#drop to last place in rankngs
  def get_mad_at(name)
    reindeer_position = @reindeer_ranking.index(name)
    new_ranking = @reindeer_ranking.insert(8, @reindeer_ranking.delete_at(reindeer_position))
    p new_ranking
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
    cookie_type
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays from Santa!"
  end

  def about
    puts "gender: #{@gender}"
    puts "ethnicity: #{@ethnicity}"
    puts "age: #{@age}"
  end

  # #getter-methods
  #
  # def age
  #   @age
  # end
  #
  # def ethnicity
  #   @ethnicity
  # end

  # #setter-methods
  #
  # def gender=(new_gender)
  #   @gender = new_gender
  # end
  #
end

# first_santa = Santa.new
# first_santa.eat_milk_and_cookies('snickerdoodle')
# first_santa.speak

# santas = []
# santas << Santa.new("transgender", "arab")
# santas << Santa.new("female", "white")
# santas << Santa.new("male", "black")

#
# birthday_boy = Santa.new("bigender", "asian")
# birthday_boy.celebrate_birthday
# birthday_boy.get_mad_at("Vixen")
#
# birthday_boy.about
# birthday_boy.age = 5
# birthday_boy.ethnicity = "blasian"
# birthday_boy.about

#release 4
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  santas.each do |santa| santa.about
  end
end
