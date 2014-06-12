class CreateTiposConfigs < ActiveRecord::Migration
  def change
    create_table :tipos_configs do |t|
      t.string :index

      t.timestamps
    end
  end
end
