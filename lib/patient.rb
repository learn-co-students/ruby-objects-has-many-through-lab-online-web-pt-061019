class Patient 
  
attr_accessor :name, :appointments
@@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(date,self,doctor)
  end 
  
  def doctors 
    self.appointments.collect  {|appointment|  appointment.doctor}
  end 
  
  def self.all
    @@all
  end 
  
  
  
  
end 