class Patient
  
  attr_accessor :name, :doctor, :date, :patient
  
  ALL = []
  
  def initialize(name)
    @name = name
    @patient = patient
    ALL << self
  end
  
  def self.all 
    ALL
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self 
    end
  end
  
  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
  
  
end