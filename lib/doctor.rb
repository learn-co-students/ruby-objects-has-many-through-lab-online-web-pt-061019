class Doctor
  attr_accessor :name #:appointments??

  def initialize(name)
    @name = name
    @appointments = []
  end

  def new_appointment(patient, date)
    Appointment.new(patient,self,date)
  end

  def appointments
    @appointments     #Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
