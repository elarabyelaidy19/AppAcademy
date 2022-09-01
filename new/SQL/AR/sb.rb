class Doctor  
    has_many :appointments

    has_many :patients,  
        through: :appointments, 
        source: :patient 

end 

class Appointment 
    belongs_to :doctor 
    belongs_to :patient

end 

class Patient  
    has_many :appointments 

    has_many :doctors, 
        through: :appointments 
        source: :doctor
end  

patient.appointments
doctor.appointments 
appointment.patient 
appointment.doctor 
doctor.patients 
patient.doctors




class Employee 
    has_many :mentees, 
        primary_key: :id, 
        foreign_key: :manager_id, 
        class_name: :Employee 


    belongs_to :mentor, 
        primary_key: :id, 
        foreign_key: :manager_id, 
        class_name: :Employee

end 



class User  
    has_many :sent_emails, 
        class_name: :Email, 
        primary_key: :email_addres, 
        foreign_key: :from_email_address 

    has_many :recived_emails, 
        class_name: :Email, 
        primary_key: :email_addres, 
        foreign_key: :to_email_addres
end 

class Email 

    belongs_to :recvicer, 
        class_name: :User, 
        primary_key: :email_addres, 
        foreign_key: :to_email_addres 

    belongs_to :sender, 
        class_name: :User, 
        primary_key: :email_addres, 
        foreign_key: :from_email_address
end 




