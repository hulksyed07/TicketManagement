class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.integer :ticket_id
      t.text :details

      t.timestamps null: false
    end
  end
end
