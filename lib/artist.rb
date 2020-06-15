class Artist
  attr_accessor :name 
  
  @@all = []
  @songs = []
  

  def initialize(name)
    @name = name
    @@all << self
end

def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end


  def songs
    @songs 
  end

  def self.song_count
    @@song_count
  end


def self.all
  @@all
end
end
