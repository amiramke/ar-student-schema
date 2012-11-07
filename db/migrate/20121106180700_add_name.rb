require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class AddName < ActiveRecord::Migration
  def up
    add_column :students, :name, :string
    
    Student.all.each do |student|
      student.name = "#{ student.first_name } #{ student.last_name }"
      student.save!
    end
  
  end

  def down
    remove_column :students, :name
  end
end
