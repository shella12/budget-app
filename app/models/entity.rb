class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :entity_groups, dependent: :destroy
  has_and_belongs_to_many :groups, join_table: 'entity_groups', dependent: :destroy

  validates :name, presence: true
  validates :amount, presence: true
end
