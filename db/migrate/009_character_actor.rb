class CharacterActor < ActiveRecord::Migration[5.1]

    def change
        create_table :character_actor do |t|
        t.integer :character_id
        t.integer :actor_id
        end
    end

end