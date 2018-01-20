class RemovePioneers < ActiveRecord::Migration
  def change
   drop_table :pioneers
  end
end
