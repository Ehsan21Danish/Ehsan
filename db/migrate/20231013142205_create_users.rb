class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :total_leave
      t.integer :role
      t.string :first_name
      t.string :last_name
      t.string :location

      t.timestamps
    end
  end
end