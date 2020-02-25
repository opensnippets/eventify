class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.references :venue, foreign_key: true
      t.integer :food_type, default: 0
      t.integer :price

      t.timestamps
    end
  end
end
