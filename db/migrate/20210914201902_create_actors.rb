class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name, null: false
      t.date :born_date, null: true
      t.text :bio, null: true
      t.timestamps
    end
  end
end
