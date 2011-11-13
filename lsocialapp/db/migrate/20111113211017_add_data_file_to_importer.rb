class AddDataFileToImporter < ActiveRecord::Migration
  def change
    add_column :importers, :data_file_name, :string
    add_column :importers, :data_content_type, :string
    add_column :importers, :data_file_size, :integer
    add_column :importers, :data_updated_at, :datetime
  end
end
