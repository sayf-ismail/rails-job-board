class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :pickup_address
      t.float :lat1
      t.float :lon1
      t.string :dropoff_address
      t.float :lat2
      t.float :lon2
      t.integer :getter_id

      t.timestamps
    end
  end
end
