class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :apellido
      t.string :identification
      t.date :birthday
      t.string :email
      t.string :password
      t.string :address
      t.string :phone
      t.boolean :gender
      t.string :picture
      t.references :documenttype, index: true

      t.timestamps
    end
  end
end
