class Game
  # attr_accessor :title, :realese_year, :features
  
  # def initialize(title, realese_year, features)
  #   @title = title
  #   @realese_year = realese_year
  #   @features = features
  # end
  attr_accessor :title, :age_rating

  def initialize(title, age_rating)
    @title = title
    @age_rating = age_rating
  end
end