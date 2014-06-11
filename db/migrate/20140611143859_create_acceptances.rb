class CreateAcceptances < ActiveRecord::Migration
  def change
    create_table :acceptances do |t|
      t.text :description
      t.references :user, index: true
      t.references :rol, index: true

      t.timestamps
    end
  end
end
