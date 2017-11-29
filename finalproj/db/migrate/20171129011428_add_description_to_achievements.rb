class AddDescriptionToAchievements < ActiveRecord::Migration[5.1]
  def change
    add_column :achievements, :description, :string
  end
end
