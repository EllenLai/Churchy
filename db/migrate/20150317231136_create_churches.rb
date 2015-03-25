class CreateChurches < ActiveRecord::Migration
  def change
    create_table :churches do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
