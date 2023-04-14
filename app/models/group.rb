class Group < ApplicationRecord
    has_one_attached :icon
    has_many :entity_groups, dependent: :destroy
    has_and_belongs_to_many :entities, join_table: 'entity_groups'

    validates :name, presence: true
    validates :icon, presence: true
end
