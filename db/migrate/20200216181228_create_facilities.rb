class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.boolean :ac
      t.boolean :pool
      t.boolean :projector
      t.boolean :sound_system
      t.boolean :genertor
      t.boolean :microphone
      t.boolean :drinks

      t.timestamps
    end
  end
end
