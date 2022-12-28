class Student < ApplicationRecord
    has_and_belongs_to_many  :cources 
    has_many :student_project
    has_many :project ,through: :student_projects
end
