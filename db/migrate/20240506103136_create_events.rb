class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :location
      t.datetime :start_date
      t.integer :duration
      t.belongs_to :user

      t.timestamps
    end
  end
end
