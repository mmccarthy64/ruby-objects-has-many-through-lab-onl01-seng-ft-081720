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
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|app| app.patient == self }
  end
  
  def doctors
    self.appointments.collect {|app| app.doctor}
  end
  
end