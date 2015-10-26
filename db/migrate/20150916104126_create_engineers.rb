class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|
      t.string :fmno
      t.string :name

      t.timestamps null: false
    end
  end
end
