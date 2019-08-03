class Doctor
  attr_accessor :name, :appointment, :patient
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appoint|
      appoint.doctor == self
    end
  end

  def new_appointment(appointment, patient)
    appointment = Appointment.new(appointment, self, patient)
    self.appointments.last
  end


end
