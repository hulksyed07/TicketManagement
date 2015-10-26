class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :incident
      t.integer :status_id
      t.integer :application_id
      t.integer :engineer_id
      t.date :dou

      t.timestamps null: false
    end
  end
end
