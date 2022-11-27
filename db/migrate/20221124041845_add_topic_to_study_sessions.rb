class AddTopicToStudySessions < ActiveRecord::Migration[7.0]
  def change
    add_reference :study_sessions, :topic, null: true, foreign_key: true
  end
end
