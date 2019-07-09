class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    # @appointments = appointments
    # @doctors = doctors
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, date, self)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    Appointment.collect do |appt|
      appt.doctor == self
    end
  end

end
