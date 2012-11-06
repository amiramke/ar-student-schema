require_relative '../../db/config'

# implement your Student model here



class Student < ActiveRecord::Base

  validates_format_of :email, :with => /.+@.+\..{2,}/
  validates :email, :uniqueness => true
  validates_format_of :phone, :with => /\(?\d{3}[\)\s\-\.]*\d{3}[\s\-\.]*\d{4}/
  validates_numericality_of :age, :greater_than_or_equal_to => 5
  attr_accessible :first_name, :last_name, :gender, :birthday, :email, :phone

  def name
    "#{first_name} #{last_name}"
  end

  def age
    Time.now.year - birthday.year
  end

end
