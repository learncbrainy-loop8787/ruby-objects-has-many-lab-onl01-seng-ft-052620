class Artist
  attr_accessor :name 
  
  @@all = []

  

  def initialize(name)
    @name = name
    @@all << self
end

def songs
Song.all.select do |song|
  song.artist == self
end 
end

def add_song(song)
    song.artist = self
  end


  def self.song_count
    Song.all.count
  end

def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
  end

def self.all
  @@all
end
end
