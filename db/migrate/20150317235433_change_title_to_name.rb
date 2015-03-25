class ChangeTitleToName < ActiveRecord::Migration
  def change
    rename_column :churches, :title, :name
    rename_column :churches, :text, :description
  end
end
