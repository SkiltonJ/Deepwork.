class CreateThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :themes do |t|
      t.integer :study_duration
      t.integer :block_amount
      t.integer :break_duration
      t.string :background
      t.string :music
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
