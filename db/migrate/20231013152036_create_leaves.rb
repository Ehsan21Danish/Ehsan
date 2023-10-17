class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.string :manager_id
      t.string :team_lead_id
      t.string :application_id
      t.integer :status
      t.text :reason
      t.date :from_date
      t.date :to_date
      t.integer :leave_type

      t.timestamps
    end
  end
end
