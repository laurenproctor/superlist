class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# dependent: :destroy - if user deletes itself, all associated tasks will also be destroyed 
  has_many :tasks, dependent: :destroy
end
