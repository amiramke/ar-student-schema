require_relative '../../db/config'

# implement your Student model here



class Student < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :gender, :birthday

  def name
    "#{first_name} #{last_name}"
  end

  def age
    Time.now.year - birthday.year
  end

end
