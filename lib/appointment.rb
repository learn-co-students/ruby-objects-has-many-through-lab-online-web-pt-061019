class Appointment
  attr_accessor :date, :doctor, :patient 
  
  @@all = []
  
  def initialize(date, doctor)
    @doctor = doctor
    @date = date 
    doctor.add_appointment(self) 
  end
  
  