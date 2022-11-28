class Theme < ApplicationRecord
  has_many :study_sessions, dependent: :destroy
  belongs_to :user, optional: true

  validates :study_duration, presence: true
  validates :name, presence: true
end
