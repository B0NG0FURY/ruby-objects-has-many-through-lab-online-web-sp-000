class Genre
  attr_accessor :genre
  @@all = []
  
  def initialize(genre)
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
end