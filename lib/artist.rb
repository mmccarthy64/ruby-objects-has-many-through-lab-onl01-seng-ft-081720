class Artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  
  def self.all
    @@all
  end
  
end