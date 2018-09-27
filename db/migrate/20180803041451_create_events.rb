class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.text :image
      t.text :location
      t.time :time
      t.date :date
      t.text :photos
      t.integer :capacity
      t.integer :group_id

      t.timestamps
    end
  end
end
