require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class AddTimestamps < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    add_timestamps :students
  end
end
