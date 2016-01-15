class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    t.integer :containers
    t.string :cargo
    t.integer :origin
    t.string :job_name
    t.integer :cost
    t.integer :destination
    t.string :job_description
    t.integer :user_id
    t.integer :boat_id
    t.timestamps null: false
    end
  end
end
