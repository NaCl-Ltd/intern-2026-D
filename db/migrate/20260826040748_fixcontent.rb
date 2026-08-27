class Fixcontent < ActiveRecord::Migration[8.1]
  def change
    add_column :microposts, :pin, :boolean, default: false, null: false
  end
end
