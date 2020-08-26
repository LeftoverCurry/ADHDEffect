class CreateEntrySideEffects < ActiveRecord::Migration[6.0]
  def change
    create_table :entry_side_effects do |t|
      t.belongs_to :side_effect, null: false, foreign_key: true
      t.belongs_to :entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
