class CreateRelationshipBetweenNetworksAndShows < ActiveRecord::Migration[4.2]

    def change
        add_column :shows, :network, :string 
        add_column :shows, :network, :belongs_to
    end
end