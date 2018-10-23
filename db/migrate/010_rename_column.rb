class RenameColumn < ActiveRecord::Migration[5.1]

    def change
        rename_column :genres, :genre, :genre_name
    end
end