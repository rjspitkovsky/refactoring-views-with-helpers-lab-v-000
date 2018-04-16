class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    self.build_artist(name: name)
  end

  def find_artist 
    if self.artist != nil 
      Artist.find_by(name: self.artist.name)
    end 
  end 

end
