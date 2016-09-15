class Quiz < ApplicationRecord
  belongs_to :teacher
  validates :teacher_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  has_many :questions, dependent: :destroy
end
