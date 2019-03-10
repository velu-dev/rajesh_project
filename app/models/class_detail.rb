class ClassDetail < ApplicationRecord
    has_many :exams
    has_many :users
    has_many :events
end
