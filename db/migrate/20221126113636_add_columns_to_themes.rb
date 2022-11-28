class AddColumnsToThemes < ActiveRecord::Migration[7.0]
  def change
    add_reference :themes, :user, null: false, foreign_key: true
  end
end
