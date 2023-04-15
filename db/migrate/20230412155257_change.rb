# frozen_string_literal: true

class Change < ActiveRecord::Migration[7.0]
  def change
    rename_column :entities, :user_id, :author_id
    rename_table :entity_groups, :entities_groups
  end
end
