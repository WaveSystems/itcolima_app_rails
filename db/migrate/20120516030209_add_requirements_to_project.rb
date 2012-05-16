class AddRequirementsToProject < ActiveRecord::Migration
  def change
    add_column :proyectos, :requerimentos, :text
  end
end
