require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class AddAddress < ActiveRecord::Migration
  def up
    add_column :students, :address, :string
  end

  def down
    remove_column :students, :address
  end
end
