class FixDirectorNameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :directors, :names, :name
  end
end
