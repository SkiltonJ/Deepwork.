class ChangeThemeColumns < ActiveRecord::Migration[7.0]
  def change
    change_column :themes, :user_id, :bigint, null: true
  end
end
