class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(appointment)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    @appointments
  end
  
  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
  
  def self.all
    @@all
  end
  
end