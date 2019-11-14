class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name= name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, genre)
    @@all << new_song
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.select do |song|
      song.genre
  end
end

end
