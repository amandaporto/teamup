class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :day
      t.string :time

      t.timestamps null: false
    end
  end
end
