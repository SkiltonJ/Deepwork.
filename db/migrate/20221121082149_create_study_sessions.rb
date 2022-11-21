class CreateStudySessions < ActiveRecord::Migration[7.0]
  def change
    create_table :study_sessions do |t|
      t.string :intention
      t.integer :duration
      t.references :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
