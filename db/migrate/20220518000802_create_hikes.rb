class CreateHikes < ActiveRecord::Migration[6.1]
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :location
      t.integer :length
      t.integer :elevation_gain
      t.boolean :dog_friendly

      t.timestamps
    end
  end
end
