class Patient
  attr_accessor :name, :appointment, :doctor
  
  @@all = []
  
  def initailize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
  
  def appointments
    Appointment.all.select {|app| app.patient == self }
  end
  
  def doctors
    self.appointments.collect {|app| app.doctor}
  end
  
end