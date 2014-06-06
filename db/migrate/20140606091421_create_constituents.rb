class CreateConstituents < ActiveRecord::Migration
  def change
    create_table :constituents do |t|
      t.string :name
      t.string :lastname
      t.string :identification
      t.date :birthday
      t.string :mail
      t.string :address
      t.string :phone
      t.boolean :gender

      t.timestamps
    end
  end
end
