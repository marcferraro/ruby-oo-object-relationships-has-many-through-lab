class Doctor
    def initialize(name)
        @name = name
        @@all << self
    end

    @@all = []

    attr_reader :name

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|apt| apt.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.map {|apt| apt.patient}
    end
end
