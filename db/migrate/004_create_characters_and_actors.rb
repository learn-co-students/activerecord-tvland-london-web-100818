class CreateCharactersAndActors < ActiveRecord::Migration[4.2]

    def change
        create_table :actors do |t|
            t.string :first_name
            t.string :last_name
        end

        create_table :characters do |t|
            t.string :name
            t.integer :show
            t.belongs_to :actor, index: true
            t.belongs_to :show, index: true
        end
    end
end
