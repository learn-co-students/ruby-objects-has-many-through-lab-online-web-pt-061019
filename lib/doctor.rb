class Doctor 
  
  attr_accessor :name, :doctor, :patient
  
  
  ALL_DOCTORS = []
  
  def initialize(name) 
    @name = name
    @patient = patient
    @doctor = doctor
    ALL_DOCTORS << self
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end
  end
  
  def patients
    Appointment.all.map do |appointment| #has many patients, through appointments
      appointment.patient               #return the method attached to the instance 
    end
  end
  
  def self.all 
    ALL_DOCTORS
  end
  
end