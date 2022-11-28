class AddColumnsToThemes < ActiveRecord::Migration[7.0]
  def change
    add_column :themes, :render, :string
    add_column :themes, :thumbnail, :string
  end
end
