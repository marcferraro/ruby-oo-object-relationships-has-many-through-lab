class Appointment
    def initialize(date, patient_instance, doctor_instance)
        @date = date
        @patient = patient_instance
        @doctor = doctor_instance
        @@all << self
    end

    @@all = []

    attr_reader :date, :patient, :doctor
    
    def self.all
        @@all
    end
end