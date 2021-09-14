class CreateCasts < ActiveRecord::Migration[6.1]
  def change
    create_table :casts do |t|
      t.references :movie, null:false, index: true
      t.references :actor, null:false, index: true
      t.timestamps
    end
  end
end
