class CreatePlantsActions < ActiveRecord::Migration[5.2]
  def change
    create_table :plants_actions do |t|
      t.date :action_date
      t.integer :plant_id
      t.integer :action_id
      t.timestamps
    end
  end
end
