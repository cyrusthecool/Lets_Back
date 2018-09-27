class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.integer :status
      t.boolean :waitinglist
      t.integer :user_id
      t.integer :event_id
      t.boolean :admin
      t.boolean :moderator


      t.timestamps
    end
  end
end
