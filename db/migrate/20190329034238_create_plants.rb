class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.boolean :in_the_garden?
      t.text :note
      t.string :user_id

      t.timestamps
    end
  end
end
