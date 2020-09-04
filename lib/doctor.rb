class Doctor
  attr_accessor :name, :appointments, :patient
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
  
  def appointments
    Appointment.all.select {|app| app.doctor == self}
  end
  
  def patients
    self.appointments.map {|appointment| appointment.patient}
  end
  
  def self.all
    @@all
  end
  
end