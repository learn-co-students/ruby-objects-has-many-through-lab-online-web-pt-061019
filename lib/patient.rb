require "pry"

class Patient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.map do |appointment|
      if appointment.patient == self
        appointment
      end
    end.compact
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end.compact
  end

end
