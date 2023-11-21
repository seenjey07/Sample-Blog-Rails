class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :caption, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
