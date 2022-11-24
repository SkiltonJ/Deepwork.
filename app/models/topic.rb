class Topic < ApplicationRecord
  has_many :study_sessions
  belongs_to :user
end
