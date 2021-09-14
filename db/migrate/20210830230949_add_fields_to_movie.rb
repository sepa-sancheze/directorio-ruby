class AddFieldsToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :servicio, :string, null: true
    add_column :movies, :link, :string, null: true
  end
end
