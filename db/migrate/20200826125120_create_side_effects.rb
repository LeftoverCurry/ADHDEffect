# frozen_string_literal: true

class CreateSideEffects < ActiveRecord::Migration[6.0]
  def change
    create_table :side_effects do |t|
      t.string :name

      t.timestamps
    end
  end
end
