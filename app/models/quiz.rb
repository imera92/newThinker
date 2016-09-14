class Quiz < ApplicationRecord
  belongs_to :teacher
  validates :teacher_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
end
