class FixMinHeightInteger < ActiveRecord::Migration[5.2]
  def change
    rename_column :attractions, :min_height_integer, :min_height
  end
end
