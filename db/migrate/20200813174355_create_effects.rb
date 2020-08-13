# frozen_string_literal: true

class CreateEffects < ActiveRecord::Migration[6.0]
  def change
    create_table :effects do |t|
      t.datetime :datetime
      t.integer :mood
      t.text :side_effects, array: true, default: []
      t.timestamps
    end
  end
end
