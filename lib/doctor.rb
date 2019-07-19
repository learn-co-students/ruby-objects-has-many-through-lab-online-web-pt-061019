class Doctor#Customer

  attr_accessor :name #:appointment, :patient

      @@all = []

  def initialize(name)
      @name = name
      @@all << self
  end

  def self.all
      @@all
  end

  def appointments#meals>>
      Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

   def patients#waiters>>
      appointments.map do |appointment|
      appointment.patient
   end
 end

 def new_appointment(date,patient)#<<
     Appointment.new(self,patient,date)
 end

end
