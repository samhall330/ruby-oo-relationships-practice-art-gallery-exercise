require_relative '../config/environment.rb'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'
require 'pry'

gallery1 = Gallery.new("Louvre", "Paris")
gallery2 = Gallery.new("MoMA", "New York")
gallery3 = Gallery.new("Getty Museum", "LA")

artist1 = Artist.new("Picasso", 100)
artist2 = Artist.new("David Hockney", 60)
artist3 = Artist.new("Monet", 200)

painting1 = Painting.new("Cubist Painting", 100, artist1, gallery1)
painting2 = Painting.new("Bigger Splash", 200, artist2, gallery2)
painting3 = Painting.new("Water Lilies", 300, artist3, gallery3)
painting4 = Painting.new("Painting", 400, artist2, gallery1)

# Painting.total_price


binding.pry

puts "Bob Ross rules."
