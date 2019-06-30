class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self,doctor,date)
  end

  def appointments
# Song.all.select {|song| song.genre == self}
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
# songs.map {|song| song.artist }
    appointments.map{|appt| appt.doctor}
  end
end
