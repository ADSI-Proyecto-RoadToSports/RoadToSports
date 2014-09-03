class CreateNombrepartidos < ActiveRecord::Migration
  def change
    create_table :nombrepartidos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
