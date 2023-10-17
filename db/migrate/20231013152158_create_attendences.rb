class CreateAttendences < ActiveRecord::Migration[7.0]
  def change
    create_table :attendences do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.boolean :is_holidy
      t.boolean :day_present

      t.timestamps
    end
  end
end
