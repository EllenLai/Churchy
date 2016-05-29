class CreateBibleStudies < ActiveRecord::Migration
  def change
    create_table :bible_studies do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
