class AddVideoColummToThemes < ActiveRecord::Migration[7.0]
  def change
    add_column :themes, :video, :string
  end
end
