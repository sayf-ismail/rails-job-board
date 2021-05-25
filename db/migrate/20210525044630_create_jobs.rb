class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :address1
      t.float :latitude
      t.float :longitude
      t.integer :getter_id

      t.timestamps
    end
  end
end
