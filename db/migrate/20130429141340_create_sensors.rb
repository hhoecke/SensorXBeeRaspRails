class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :name
      t.float :tempval

      t.timestamps
    end
  end
end
