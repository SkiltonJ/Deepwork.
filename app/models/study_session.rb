class StudySession < ApplicationRecord
  belongs_to :topic, optional: true
  belongs_to :theme, optional: true
  belongs_to :user, optional: true
end
