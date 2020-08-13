class AddUserToEffects < ActiveRecord::Migration[6.0]
  def change
    add_reference :effects, :user, null: false, foreign_key: true
  end
end
