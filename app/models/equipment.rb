# frozen_string_literal: true

class Equipment < ApplicationRecord
  validates :name, presence: true
end
