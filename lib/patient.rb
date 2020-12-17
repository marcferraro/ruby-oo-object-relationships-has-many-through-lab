class Patient
    def initialize(name)
        @date = name
        @@all << self
    end

    @@all = []

    attr_reader :name
    
    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
        # new_appointment(date, patient)
        # Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|apt| apt.patient == self}
    end

    def doctors
        self.appointments.map {|apt| apt.doctor}
    end
end
