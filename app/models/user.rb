class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :themes, dependent: :destroy
  has_many :study_sessions, through: :themes
  has_many :topics, dependent: :destroy
  # validates :first_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # def current_level
  #   if ?? < 1000
  #     1
  # end
end


# user stats method to get level and minutes??
