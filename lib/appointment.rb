class Appointment 
  
  attr_accessor :date, :patient, :doctor 
  
  ALL = [] 
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient 
    @doctor = doctor
    ALL << self
  end
  
  def self.all 
    ALL
  end
end