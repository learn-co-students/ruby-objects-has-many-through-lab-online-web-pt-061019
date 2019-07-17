class Doctor
  attr_accessor :name, :appointments, :patients
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient_name, date)
    appointment = Patient.new(patient_name, self, date)
    @appointments << appointment
    appointment
  end
  
  def appointments
    @appointments
  end
  
  def patients
      self.appointments.collect {|appointment| appointment.patient}
  end
end