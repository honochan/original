class AddPageToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :page, :integer
  end
end
