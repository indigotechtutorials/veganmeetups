class CreateMeetups < ActiveRecord::Migration[8.0]
  def change
    create_table :meetups do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :business_name
      t.datetime :event_date

      t.timestamps
    end
  end
end
