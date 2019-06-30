require 'pry'
class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient,date)
    Appointment.new(patient,self,date)
  end

  def appointments
# Song.all.select {|song| song.artist == self}
    Appointment.all.select{ |appt| appt.doctor == self}
    # binding.pry
  end

  def patients
  # songs.map {|song| song.genre }
  appointments.map {|appt| appt.patient}
  end
end
