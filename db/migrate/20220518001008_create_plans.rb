class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.date :date
      t.integer :user_id
      t.integer :hike_id

      t.timestamps
    end
  end
end
