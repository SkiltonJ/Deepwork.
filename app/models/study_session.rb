class StudySession < ApplicationRecord
  belongs_to :theme
  belongs_to :topic
end
