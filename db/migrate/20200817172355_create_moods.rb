# frozen_string_literal: true

class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.belongs_to :record, null: false, foreign_key: true
      t.integer :score
      t.timestamps
    end
  end
end
