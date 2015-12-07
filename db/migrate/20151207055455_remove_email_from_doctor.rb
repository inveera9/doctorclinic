class RemoveEmailFromDoctor < ActiveRecord::Migration
  def change
  	remove_column :doctors, :email 
  end
end
