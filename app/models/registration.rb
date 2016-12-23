class Registration < ActiveRecord::Base
  has_many :races
  has_many :technical_skills
  has_many :diet_restrictions
end
