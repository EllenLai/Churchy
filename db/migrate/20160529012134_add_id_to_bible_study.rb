class AddIdToBibleStudy < ActiveRecord::Migration
  def change
    add_column :bible_studies, :church_id, :integer
  end
end
