# frozen_string_literal: true

class RenameTableEntitiesGroups < ActiveRecord::Migration[7.0]
  def change
    rename_table :entities_groups, :entity_groups
  end
end
