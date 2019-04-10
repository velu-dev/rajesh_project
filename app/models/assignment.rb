class Assignment < ApplicationRecord
  belongs_to :user, optional: :true
  belongs_to :class_detail, optional: :true
end
