# frozen_string_literal: true

class Equipment < ApplicationRecord
  has_and_belongs_to_many :exercises

  validates :name, presence: true

  def description_content
    if description.present?
      description
    else
      'No description provided for this item.'
    end
  end
end
