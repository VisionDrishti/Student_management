class Cource < ApplicationRecord
    has_and_belongs_to_many  :students
end
