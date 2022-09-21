class AddSkillToCat < ActiveRecord::Migration[7.0]
  def change 
    add_column :cats, :skill, :string
  end
end
