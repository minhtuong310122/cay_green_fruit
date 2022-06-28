class Category < ApplicationRecord
  has_many :products

  def self.options_for_select
    all.map do |category|
      [category.name, category.id]
    end
  end
end
