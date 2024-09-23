# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable, :validatable
  has_many :projects, dependent: :destroy
  has_many :comments, dependent: :destroy
end
