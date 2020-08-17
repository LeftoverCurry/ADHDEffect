# frozen_string_literal: true

class CreateSideEffects < ActiveRecord::Migration[6.0]
  def change
    create_table :side_effects do |t|
      t.belongs_to :record, null: false, foreign_key: true
      t.text :list, array: true, default: []
      t.timestamps
    end
  end
end
