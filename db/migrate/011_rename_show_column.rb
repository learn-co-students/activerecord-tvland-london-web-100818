class RenameShowColumn < ActiveRecord::Migration[5.1]

    def change
        remove_column :shows, :genre_id
        add_column :shows, :genre, :string
    end
end