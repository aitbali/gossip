class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
	has_many :created_events, class_name: 'Event',
    foreign_key: :creator_id
    has_and_belongs_to_many :attended_events, class_name: 'Event',
    foreign_key: :attendee_id #ajouter dans la colone attendee_id de la joinTable
    validates :name, presence: true , uniqueness: true



  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
