class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.boolean :is_verified, default: false
      t.text :description, null: true
      t.timestamps
    end
  end
end
