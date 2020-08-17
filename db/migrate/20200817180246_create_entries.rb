# frozen_string_literal: true

class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :date_of_report

      t.timestamps
    end
  end
end
