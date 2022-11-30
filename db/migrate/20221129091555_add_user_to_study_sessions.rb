class AddUserToStudySessions < ActiveRecord::Migration[7.0]
  def change
    add_reference :study_sessions, :user, null: false, foreign_key: true
  end
end
