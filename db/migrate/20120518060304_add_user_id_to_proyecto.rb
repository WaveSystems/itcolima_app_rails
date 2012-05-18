class AddUserIdToProyecto < ActiveRecord::Migration
  def change
    add_column :proyectos, :user_id, :integer
  end
end
