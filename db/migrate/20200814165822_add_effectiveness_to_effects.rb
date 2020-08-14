class AddEffectivenessToEffects < ActiveRecord::Migration[6.0]
  def change
    add_column :effects, :effectiveness, :integer
  end
end
