class Patient
  attr_accessor :name, :appointments, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = appointments
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
   appointment = Appointment.new(doctor, self, date)
   appointment.patient == self
  end
    
end