class ChangeDateAndTimeTypesToString < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :time, :string
    change_column :events, :date, :string

  end
end
