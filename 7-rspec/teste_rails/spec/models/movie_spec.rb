require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "is valid with valid attributes" do
    movie = Movie.new(title: "Movie Title", description: "Movie Description", duration: 5)
    expect(movie).to be_valid
  end

  context "when there are movies with duration" do
    it "return the correct average duration" do
      Movie.create(title: "Movie 1", duration: 5)
      Movie.create(title: "Movie 2", duration: 10)

      expect(Movie.average_duration).to eq(7)      
    end
  end
end
