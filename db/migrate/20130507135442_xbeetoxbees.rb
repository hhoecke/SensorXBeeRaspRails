class Xbeetoxbees < ActiveRecord::Migration
  def change
  	rename_table(:xbee,:xbees)
  end
end
