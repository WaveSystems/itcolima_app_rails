class RemoveProyectoIdFromAsesors < ActiveRecord::Migration
  def up
    remove_column :asesors, :proyecto_id
  end

  def down
    add_column :asesors, :proyecto_id, :integer
  end
end
