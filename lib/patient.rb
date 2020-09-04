class Patient
  attr_accessor :name
  
  @@all = []
  
  def initailize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, doctor)
    
  end
end