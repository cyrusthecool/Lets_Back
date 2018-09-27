class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.text :name
      t.text :description
      t.text :image
      t.text :location
      t.text :nickname

      t.timestamps
    end
  end
end
