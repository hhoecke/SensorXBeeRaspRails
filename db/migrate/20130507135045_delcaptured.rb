class Delcaptured < ActiveRecord::Migration
  def change
  	remove_column :xbee, :captured
  end
end
