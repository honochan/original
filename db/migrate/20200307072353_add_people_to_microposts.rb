class AddPeopleToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :people, :string
  end
end
