require 'pry'

class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}
  end

  def cities
    galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    all_experience = Artist.all.map{|artist|artist.years_experience}
    all_experience.sum
  end


  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.count / artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)    
  end

end

# * `Artist.all`
# * Returns an `array` of all the artists

# * `Artist#paintings`
# * Returns an `array` all the paintings by an artist

# * `Artist#galleries`
# * Returns an `array` of all the galleries that an artist has paintings in

# * `Artist#cities`
# * Return an `array` of all cities that an artist has paintings in

# * `Artist.total_experience`
# * Returns an `integer` that is the total years of experience of all artists

# * `Artist.most_prolific`
# * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

# * `Artist#create_painting`
# * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist