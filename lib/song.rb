class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def self.count
    @@count
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
  
  # Alternative way to do self.genre_count and using the same format, do artist_count as well.
  #  def self.genre_count
  #  @@genres.inject(Hash.new(0)) { |total, i| total[i]+= 1 ;total}
  #end 
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
      artist_count[artist] +=1
      else
      artist_count[artist] = 1
      end
    end
    artist_count
  end
  
  
end