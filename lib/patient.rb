class Patient
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all?
    @@all
  end

  def appointments
    Appointment.all.select do |appoint|
      appoint.patient == self
    end
  end


end
