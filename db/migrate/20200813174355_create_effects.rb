# frozen_string_literal: true

class CreateEffects < ActiveRecord::Migration[6.0]
  def change
    create_table :effects do |t|
      t.date_of_report :datetime
      t.references :mood_id, null: false, foreign_key: true
      t.references :side_effect_id, null: false, foreign_key: true
      t.references :effectiveness_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
