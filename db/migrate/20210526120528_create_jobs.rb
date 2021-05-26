class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :address1
      t.float :lat1
      t.float :long1
      t.string :address2
      t.float :lat2
      t.float :long2
      t.integer :getter_id

      t.timestamps
    end
  end
end
