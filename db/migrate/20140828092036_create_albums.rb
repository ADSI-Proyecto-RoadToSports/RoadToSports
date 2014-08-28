class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
    add_attachment :albums, :image
  end
end
