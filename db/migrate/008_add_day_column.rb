class AddDayColumn < ActiveRecord::Migration[5.0]

    def change
        add_column :shows, :day, :string
    end

end