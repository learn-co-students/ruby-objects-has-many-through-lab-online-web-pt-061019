class Doctor
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appointments| appointments.doctor == self}
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end
  
  def patients
    self.appointment.collect {|appointment| appointment.patient}
  end
  
end