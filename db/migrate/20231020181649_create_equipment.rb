class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :name, optional: false
      t.text :description, optional: true
      
      t.timestamps
    end
  end
end
