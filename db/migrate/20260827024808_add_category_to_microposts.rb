class AddCategoryToMicroposts < ActiveRecord::Migration[8.1]
  def change
    add_column :microposts, :category, :string
  end
end
