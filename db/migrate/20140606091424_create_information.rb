class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.text :description
      t.boolean :state
      t.references :type_information, index: true

      t.timestamps
    end
  end
end
