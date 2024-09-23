# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  broadcasts

  validates :status, inclusion: {in: ["Backlog", "In Progress", "Completed"]}
  validates :title, presence: true
end
