class Song
  attr_accessor :name, :artist, :genre
  
  @@songCount = 0
  
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
  
  
end