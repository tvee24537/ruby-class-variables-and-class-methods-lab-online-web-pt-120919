class Song
  attr_accessor :name, :artist, :genre
  
  @@songCount = 0
  @@genres = []
  @@artists = []
  
  def self.count
    @@songCount
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@songCount +=1
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
end