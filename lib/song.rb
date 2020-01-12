class Song
  attr_accessor :name, :artist, :genre
  
  @@songCount = 0
  
  def self.count
    @@songCount
  end
  
  
  
end