class Event < ApplicationRecord
	belongs_to :class_detail, optional: true
end
