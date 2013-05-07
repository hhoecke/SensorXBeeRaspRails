class Sensorstoxbee < ActiveRecord::Migration
  def change
  	rename_table(:sensors,:xbee)
  end
end
