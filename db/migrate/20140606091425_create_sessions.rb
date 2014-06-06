class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.string :password
      t.references :user, index: true

      t.timestamps
    end
  end
end
