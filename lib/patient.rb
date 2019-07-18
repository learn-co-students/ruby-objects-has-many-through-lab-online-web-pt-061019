class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    # @appointments = appointments
    # @doctors = doctors
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
   appointment = Appointment.new(self, doctor, date)
   #@appointments << appointment
   #appointment.patient = self
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
    
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
end