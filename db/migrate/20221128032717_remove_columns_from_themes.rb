class RemoveColumnsFromThemes < ActiveRecord::Migration[7.0]
  def change
    remove_column :themes, :block_amount, :string
    remove_column :themes, :background, :string
    remove_column :themes, :break_duration, :string
  end
end
