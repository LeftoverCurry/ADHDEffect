class CreateSideEffects < ActiveRecord::Migration[6.0]
  def change
    create_table :side_effects do |t|
      t.string :name
      t.belongs_to :entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
