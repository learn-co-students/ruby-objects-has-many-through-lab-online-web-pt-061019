require 'pry'
class Patient

  attr_reader :name, :appointment, :doctor


  @@all =[]

  def initialize(name)
    @doctor = doctor
    @name = name
    @@all << self
  end

  def self.all
    @all
    @@all << self
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(date, self, doctor)
    appt
  end

  def appointments
    Appointment.all.select do |appointment|
    appointment.patient == self
   end
 end


  def doctors
   appointments.map do |appointment|
      appointment.doctor
    end
  end
end
