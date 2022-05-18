class CreateHikePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :hike_plans do |t|
      t.date :date
      t.integer :user_id
      t.integer :hike_id

      t.timestamps
    end
  end
end
