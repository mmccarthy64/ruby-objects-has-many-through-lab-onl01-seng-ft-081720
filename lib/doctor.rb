class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
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