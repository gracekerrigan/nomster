class Photo < ApplicationRecord
  def create
   create_tables :photos do |t|	
	belongs_to :caption
	belongs_to :place_id
  end

    add_index :photos, [:caption, :place_id]
    add_index :photos, :place_id
  end   
end
