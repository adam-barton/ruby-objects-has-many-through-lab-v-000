class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def new_appointment(doctor, time)
    Appointment.new(doctor, self, time)
  end



end
