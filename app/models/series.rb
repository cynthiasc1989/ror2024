class Series < ApplicationRecord
    validates :name, :synopsis, :director, presence: true
end
