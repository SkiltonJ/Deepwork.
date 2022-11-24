class StudySession < ApplicationRecord
  belongs_to :theme, optional: true
end
