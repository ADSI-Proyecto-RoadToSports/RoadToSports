class CreateTypeTournaments < ActiveRecord::Migration
  def change
    create_table :type_tournaments do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
