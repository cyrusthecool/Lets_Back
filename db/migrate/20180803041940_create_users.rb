class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.boolean :admin, default: false
      t.text :image
      t.text :bio
      t.text :location

      t.timestamps
    end
  end
end
