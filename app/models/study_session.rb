class StudySession < ApplicationRecord
  belongs_to :topic
  belongs_to :theme, optional: true
end
