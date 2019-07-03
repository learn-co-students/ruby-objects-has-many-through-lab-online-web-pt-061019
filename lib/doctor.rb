require "pry"

class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.map do |appointment|
      if appointment.doctor = self
        appointment
      end
    end.compact
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end.compact
  end

end
