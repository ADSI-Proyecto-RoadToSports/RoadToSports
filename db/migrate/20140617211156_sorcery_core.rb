class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre,           :null => false
      t.string :email,            :null => false
      t.integer :document_type
      t.string :documento
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false
      t.boolean :admin
      t.boolean :usuario

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
