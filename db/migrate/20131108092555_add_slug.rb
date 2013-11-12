class AddSlug < ActiveRecord::Migration
  def change
  	add_column :shits, :slug, :string
  	add_index :shits, :slug, unique: true
  end
end
