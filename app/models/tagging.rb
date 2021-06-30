class Tagging < ApplicationRecord
  belongs_to :question
  belongs_to :tag

  validates :tag_id, presence: true
end
