# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :project
  belongs_to :user
  broadcasts_to :project
end
