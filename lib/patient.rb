class Patient
  attr_accessor :name
  
  @@all = []
  
  def initailize(name)
    @name = name
    @@all << self
  end
end