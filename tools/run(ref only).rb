require 'pry'
require_relative "./doctor"
require_relative "./patient"
require_relative "./appointment"

# Patient should know their doctors.
# Doctor should know their patients.
# Doctor/Patient should know their Appointments.
# Doctor and/or Patient should be able to make an apointment.
# User should be able to find doctor with the highest rating.
# Patient can find Dcotor by speciality.
# Patient should be able to rate their doctor.
# BONUS:
# User can find the Doctor with the highest rating by Speciality.
# Doctors should have an average rating.

patient1 = Patient.new("Yana","swagstreet", true)
patient2 = Patient.new("Philip","swagstreet", true)
patient3 = Patient.new("Brianna","11 Broadway", true)

doctor1 = Doctor.new("Brianna", "Breaking Hearts")
doctor2 = Doctor.new("Tashawn", "Proctology")
doctor3 = Doctor.new("tmep", "temp")


appointment1 = Appointment.new(doctor1, patient1)
appointment2 = Appointment.new(doctor2, patient2)
appointment3 = Appointment.new(doctor3, patient3)

binding.pry
puts "do some stuff"


